package main

import (
	"fmt"
	"log"
	"syscall"

	"github.com/chenkeao/mblog/models"
	"github.com/chenkeao/mblog/pkg/logging"
	"github.com/chenkeao/mblog/pkg/setting"
	router "github.com/chenkeao/mblog/routers"
	"github.com/fvbock/endless"
)

func main() {
	setting.Setup()
	models.Setup()
	logging.Setup()

	endless.DefaultReadTimeOut = setting.ServerSetting.ReadTimeout
	endless.DefaultWriteTimeOut = setting.ServerSetting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	endPoint := fmt.Sprintf(":%d", setting.ServerSetting.HttpPort)

	server := endless.NewServer(endPoint, router.InitRouter())
	server.BeforeBegin = func(add string) {
		log.Printf("pid is %d", syscall.Getpid())
	}

	err := server.ListenAndServe()
	if err != nil {
		log.Printf("Server err :%v", err)
	}
}

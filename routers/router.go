package router

import (
	_ "github.com/chenkeao/mblog/docs"
	"github.com/chenkeao/mblog/middleware/jwt"
	"github.com/chenkeao/mblog/pkg/setting"
	"github.com/chenkeao/mblog/routers/api"
	v1 "github.com/chenkeao/mblog/routers/api/v1"
	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
)

// InitRouter initialize routing information
func InitRouter() *gin.Engine {
	r := gin.New()
	r.Use(gin.Logger())
	r.Use(gin.Recovery())
	gin.SetMode(setting.RunMode)

	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))
	r.GET("/auth", api.GetAuth)

	apiv1 := r.Group("/api/v1")
	apiv1.Use(jwt.JWT())
	{
		apiv1.GET("/tags", v1.GetTags)
		apiv1.POST("/tags", v1.AddTag)
		apiv1.PUT("/tags/:id", v1.EditTag)
		apiv1.DELETE("/tags/:id", v1.DeleteTag)

		apiv1.GET("/articles", v1.GetArticles)
		apiv1.GET("/articles/:id", v1.GetArticle)
		apiv1.POST("/article", v1.AddArticle)
		apiv1.PUT("/article/:id", v1.EditArticle)
		apiv1.DELETE("/article/:id", v1.DeleteArticle)

	}

	return r
}

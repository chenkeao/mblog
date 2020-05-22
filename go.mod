module github.com/chenkeao/mblog

go 1.13

replace (
	github.com/chenkeao/mblog/config => ./config
	github.com/chenkeao/mblog/docs => ./docs
	github.com/chenkeao/mblog/middleware => ./middleware
	github.com/chenkeao/mblog/models => ./models
	github.com/chenkeao/mblog/pkg/e => ./pkg/e
	github.com/chenkeao/mblog/pkg/setting => ./pkg/setting
	github.com/chenkeao/mblog/pkg/utils => ./pkg/utils
	github.com/chenkeao/mblog/routers => ./routers
)

require (
	github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751
	github.com/astaxie/beego v1.12.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.56.0 // indirect
	github.com/go-kratos/kratos v0.5.0 // indirect
	github.com/go-openapi/spec v0.19.8 // indirect
	github.com/go-openapi/swag v0.19.9 // indirect
	github.com/go-sql-driver/mysql v1.5.0
	github.com/gobuffalo/packr/v2 v2.8.0 // indirect
	github.com/godoctor/godoctor v0.0.0-20181123222458-69df17f3a6f6 // indirect
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/jinzhu/gorm v1.9.12
	github.com/jinzhu/mysql v1.0.3 // indirect
	github.com/mailru/easyjson v0.7.1 // indirect
	github.com/microcosm-cc/bluemonday v1.0.2 // indirect
	github.com/nbutton23/zxcvbn-go v0.0.0-20180912185939-ae427f1e4c1d // indirect
	github.com/prometheus/common v0.10.0 // indirect
	github.com/russross/blackfriday v2.0.0+incompatible // indirect
	github.com/smartystreets/goconvey v1.6.4 // indirect
	github.com/swaggo/gin-swagger v1.2.0
	github.com/swaggo/swag v1.6.6
	github.com/unknwon/com v1.0.1
	github.com/urfave/cli/v2 v2.2.0 // indirect
	golang.org/x/net v0.0.0-20200520182314-0ba52f642ac2 // indirect
	golang.org/x/sys v0.0.0-20200519105757-fe76b779f299 // indirect
	golang.org/x/tools v0.0.0-20200520220537-cf2d1e09c845 // indirect
	google.golang.org/genproto v0.0.0-20200402124713-8ff61da6d932
	gopkg.in/ini.v1 v1.56.0
	gopkg.in/yaml.v2 v2.3.0 // indirect
)

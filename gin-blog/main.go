package main

import (
	"fmt"
	"log"
	"syscall"

	"github.com/fvbock/endless"

	"gin-blog/routers"
	"gin-blog/pkg/setting"
)

func main() {
	setting.Setup()
	models.Setup()
	logging.Setup()

	endless.DefaultReadTimeOut = setting.ReadTimeout
	endless.DefaultWriteTimeOut = setting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	endPoint := fmt.Sprintf(":%d", setting.HTTPPort)

	server := endless.NewServer(endPoint, routers.InitRouter())
	server.BeforeBegin = func(add string) {
		log.Printf("Actual pid is %d", syscall.Getpid())
	}

	err := server.ListenAndServe()
	if err != nil {
		log.Printf("Server err: %v", err)
	}
}

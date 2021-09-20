package main

import (
	"fmt"
)

func main() {

	fmt.Println("Hello From GoLang 😃")
  fmt.Println("👋 Hello World 🌍")
	// Prevent the function from returning, which is required in a wasm module
	<-make(chan bool)
}

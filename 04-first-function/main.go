package main

import (
	"syscall/js"
)

// Hello returns an interface
func Hello(this js.Value, args []js.Value) interface{} {
	message := args[0].String() // get the parameters
	return "Hello " + message
}

func main() {

	// Define the functions in the JavaScript scope
	js.Global().Set("Hello", js.FuncOf(Hello))

	<-make(chan bool)
}

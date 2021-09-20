package main

import (
	"syscall/js"
)

// GiveMeNumbers returns an interface
func GiveMeNumbers(_ js.Value, args []js.Value) interface{} {
	return []interface{} {1, 2, 3, 4, 5}
}

func main() {

	// Define the functions in the JavaScript scope
	js.Global().Set("GiveMeNumbers", js.FuncOf(GiveMeNumbers))

	// Prevent the function from returning, which is required in a wasm module
	<-make(chan bool)
}


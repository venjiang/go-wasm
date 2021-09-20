package main

import (
	"syscall/js"
)

func Hello(this js.Value, args []js.Value) interface{} {

	// get members of an array
	firstName := args[0].Index(0)
	lastName := args[0].Index(1)
	age := args[0].Index(2)
	size := args[0].Index(3)

	return map[string]interface{}{
		"message":   "👋 Hello",
		"firstName": firstName.String(),
		"lastName":  lastName.String(),
		"age":       age.Int(),
		"size":      size.Float(),
		"author":    "@k33g_org",
	}
}

func main() {

	// Define the functions in the JavaScript scope
	js.Global().Set("Hello", js.FuncOf(Hello))

	<-make(chan bool)
}

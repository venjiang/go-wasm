package main

import (
	"syscall/js"
)

func Hello(this js.Value, args []js.Value) interface{} {
	
	// get an object
	human := args[0]
	// get members of an object
	firstName := human.Get("firstName")
	lastName := human.Get("lastName")

	return map[string]interface{}{
		"message": "👋 Hello " + firstName.String() + " " + lastName.String(),
		"author":  "@k33g_org",
	}

}

func main() {

	// Define the functions in the JavaScript scope
	js.Global().Set("Hello", js.FuncOf(Hello))

	<-make(chan bool)
}

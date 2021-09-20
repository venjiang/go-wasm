
```bash
go mod init hello-world
```


```golang
package main

import (
	"fmt"
)

func main() {
  fmt.Println("👋 Hello World 🌍")
	// Prevent the function from returning, which is required in a wasm module
	<-make(chan bool)
}
```


```html
<html>
	<head>
		<meta charset="utf-8"/>
		<script src="wasm_exec.js"></script>

	</head>
	<body>
		<h1>WASM Experiments</h1>
		<script>
			// This is a polyfill for FireFox and Safari
			if (!WebAssembly.instantiateStreaming) { 
				WebAssembly.instantiateStreaming = async (resp, importObject) => {
					const source = await (await resp).arrayBuffer()
					return await WebAssembly.instantiate(source, importObject)
				}
			}

			// Promise to load the wasm file
      function loadWasm(path) {
        const go = new Go()

        return new Promise((resolve, reject) => {
          WebAssembly.instantiateStreaming(fetch(path), go.importObject)
          .then(result => {
            go.run(result.instance)
            resolve(result.instance)
          })
          .catch(error => {
            reject(error)
          })
        })
      }

			// Load the wasm file
			loadWasm("main.wasm").then(wasm => {
        console.log("main.wasm is loaded 👋")
			}).catch(error => {
        console.log("ouch", error)
      }) 

		</script>
	</body>
</html>
```



```bash
cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" .
GOOS=js GOARCH=wasm go build -o main.wasm
ls -lh *.wasm
```

## Serve index.html

```bash
python3 -m http.server
```

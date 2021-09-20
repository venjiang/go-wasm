

We'll use this GoLang package `"syscall/js"` see https://pkg.go.dev/syscall/js

*"Package js gives access to the WebAssembly host environment when using the js/wasm architecture. Its API is based on JavaScript semantics."*


```bash
#wget https://raw.githubusercontent.com/tinygo-org/tinygo/release/targets/wasm_exec.js

wget https://raw.githubusercontent.com/tinygo-org/tinygo/v0.19.0/targets/wasm_exec.js
tinygo build -o main.wasm -target wasm ./main.go
ls -lh *.wasm
```

## Serve index.html

```bash
python3 -m http.server
```

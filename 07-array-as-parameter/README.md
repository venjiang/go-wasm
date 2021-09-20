

```bash
wget https://raw.githubusercontent.com/tinygo-org/tinygo/v0.19.0/targets/wasm_exec.js
tinygo build -o main.wasm -target wasm ./main.go
ls -lh *.wasm
```

## Serve index.html

```bash
node index.js
```


There is a small bug "syscall/js.finalizeRef not implemented", the fix is easy

```javascript
// remove the message: syscall/js.finalizeRef not implemented
// https://github.com/tinygo-org/tinygo/issues/1140
go.importObject.env["syscall/js.finalizeRef"] = () => {}
```


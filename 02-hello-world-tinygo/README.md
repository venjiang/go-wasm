

```bash
#wget https://raw.githubusercontent.com/tinygo-org/tinygo/release/targets/wasm_exec.js

wget https://raw.githubusercontent.com/tinygo-org/tinygo/v0.19.0/targets/wasm_exec.js
tinygo build -o main.wasm -target wasm ./main.go
ls -lh *.wasm
```

## Serve index.html

```bash
node index.js
```

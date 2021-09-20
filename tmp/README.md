python3 -m http.server

# hello-wasm

- version `v4.5.7`

## Initialize

### Environment setup

```bash
# go mod
go mod init gitlab.com/k33g/hello-wasm
# generate wasm_exec.js
cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" .
```

> The wasm_exec.js file is provided by Go to load your .wasm file into a Web page.

## Wasm compilation

```bash
GOOS=js GOARCH=wasm go build -o main.wasm
```

## Serve index.html

```bash
python3 -m http.server
```

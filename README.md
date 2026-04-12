# gen

## buf

### 参考文档

<https://buf.build/docs/configuration/v2/buf-gen-yaml/>

### 安装依赖

buf dep update

### 生成语言代码

buf generate --include-imports

### 生成 FileDescriptorSet

buf build -o descriptor.pb --as-file-descriptor-set

## goctl

### 生成语言代码

goctl api go -api alarm.api -dir .
goctl-darwin-1.1.4  api go -api task.api -dir .

# gen

## 生成语言代码

### buf

### 参考文档

<https://buf.build/docs/configuration/v2/buf-gen-yaml/>

### 安装依赖

buf dep update

buf generate --include-imports

buf build -o descriptor.pb --as-file-descriptor-set

### goctl

goctl api go -api alarm.api -dir .
goctl-darwin-1.1.4  api go -api task.api -dir .

### json

<https://app.quicktype.io/>

`include "json.hpp"` 转 `include <nlohmann/json.hpp>`

# flycheck-protobuf
A protobuf syntax checker based on protoc compiler

Usage

```
(require 'flycheck-protobuf)
(add-hook 'protobuf-mode-hook (lambda () (flycheck-select-checker 'protobuf-protoc-reporter)))
```

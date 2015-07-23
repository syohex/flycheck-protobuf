(flycheck-define-checker protobuf-protoc-reporter
  "A protobuf syntax checker based on protoc compiler"
  :command ("/Users/eduardk/.emacs.d/check-protoc.sh" source-inplace)
  :error-patterns
  ((error line-start
          (message "In file included from") " " (file-name) ":" line ":"
          column ":"
          line-end)
   (info line-start (file-name) ":" line ":" column
         ": note: " (message) line-end)
   ;; (warning line-start (file-name) ":" line ":" column
   ;;          ": " (message) line-end)
   (error line-start (file-name) ":" line ":" column
          ": " (message) line-end))
  :modes (protobuf-mode))

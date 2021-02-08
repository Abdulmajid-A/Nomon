(use-package company-lsp
  :straight t
  ;;  :after (company lsp)
  :config
  (push 'company-lsp company-backends)
  (setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil))

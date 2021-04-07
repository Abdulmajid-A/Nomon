(use-package lsp-ui
  :straight t
  :bind
  ([remap xref-find-references] . lsp-ui-peek-find-references)
  ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
  )

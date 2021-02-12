(use-package lsp-mode
  :straight
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  
  (setq lsp-idle-delay 0.1);;this may need to be higher for some backends
  
  (setq lsp-headerline-breadcrumb-enable t)

  ;;  (when (executable-find "clang-tidy"))
  ;;(for now we will do it mannually later make it automatic based on clangd hook(if any)
  ;;  (setq lsp-clients-clangd-args "--clang-tidy")
  ;;)

  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 ;;(XXX-mode . lsp)
	 ((c-mode c++-mode objc-mode) . lsp)
         ;; if you want which-key integration
	 (lsp-mode . lsp-enable-which-key-integration)
	 )
  :commands lsp)

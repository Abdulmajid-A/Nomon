(use-package lsp-mode
  :straight
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 ;;(XXX-mode . lsp)
	 (prog-mode . lsp)
         ;; if you want which-key integration
	 (lsp-mode . lsp-enable-which-key-integration)
	 )
	 :commands lsp)

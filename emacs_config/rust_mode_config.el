;;configuration for rust-mode

(defun set_indent_by_tabs_to_false () (setq indent-tabs-mode nil))

(use-package rust-mode
  :config
  (setq rust-format-on-save t)
  (add-hook 'rust-mode-hook 'set_indent_by_tabs_to_false)
  :bind
  (
   ("C-c C-r" . rust-run)
   ("C-c C-c" . rust-compile)
   ("C-c C-t" . rust-test)
   )
  )










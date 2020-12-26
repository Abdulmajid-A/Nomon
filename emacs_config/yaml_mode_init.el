(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  :bind
  (
   :map yaml-mode-map
   ("C-m" newline-and-indent)
   )
  )

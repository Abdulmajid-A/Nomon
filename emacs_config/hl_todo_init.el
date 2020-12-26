(use-package hl-todo
  :straight t
  :init
  (global-hl-todo-mode +1)
  :config
  (setq hl-todo-keyword-faces
	'(("TODO"   . "#A8C023")
          ("FIXME"  . "#E9474B")
          ("DEBUG"  . "#A020F0")))
  )

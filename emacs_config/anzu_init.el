(use-package anzu
  :straight t
  :init
  (global-anzu-mode +1)
  :config
  (custom-set-variables
   ;;remove anzu name from the mode line
   '(anzu-mode-lighter "")
   '(anzu-deactivate-region t)
   )
  )

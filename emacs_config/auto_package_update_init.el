(use-package auto-package-update
  :straight t
  :if window-system
  :config
  (setq auto-package-update-prompt-before-update t)
  (setq auto-package-update-delete-old-versions t)
  ;;(setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

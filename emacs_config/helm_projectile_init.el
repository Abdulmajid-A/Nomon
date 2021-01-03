(use-package helm-projectile
  :straight t
  :init
  (helm-projectile-on)
  :config
  (setq projectile-switch-project-action 'helm-projectile)
  :bind
  (
   :map helm-projectile-find-file-map ;;so that we don't use the arrows inside helm (by default theys keys are used to move text up/down)
   ("M-n" . helm-next-source)
   ("M-p" . helm-previous-source)
   ("M-h" . helm-find-files-history);;was M-p
   )
  )

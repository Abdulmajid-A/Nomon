(use-package projectile
  :straight t
  :init
  (projectile-mode +1)
  :config
  (when (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
    (setq projectile-indexing-method 'alien)
    )
  :bind-keymap
  ("C-c p" . projectile-command-map)
  )

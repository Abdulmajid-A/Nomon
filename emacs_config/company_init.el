(use-package company
  :straight t
  :config
  (global-company-mode)
  (setq company-tooltip-idle-delay 0)
  (setq company-idle-delay 0)
  :bind
  (
   :map company-mode-map
   ("C-<return>" . company-complete)
   :map company-active-map
   ("C-<return>" . company-complete)
   )
  )

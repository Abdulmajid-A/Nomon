(use-package helm-company
  :straight t
  :demand
  :bind
  (
   :map company-mode-map
   ("C-M-i" . helm-company)
   :map company-active-map
   ("C-M-i" . helm-company)
   )
  )

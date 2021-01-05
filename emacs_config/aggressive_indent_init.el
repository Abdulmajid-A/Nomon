(use-package aggressive-indent
  :straight t
  :init
  (global-aggressive-indent-mode 1)
  )

;; to exclude a programming mode from indentation use -> (add-to-list 'aggressive-indent-excluded-modes 'html-mode)

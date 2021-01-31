(use-package irony
  :straight t
  :hook
  ((c++-mode-hook c-mode-hook objc-mode-hook) . irony-mode)
  (irony-mode-hook . irony-cdb-autosetup-compile-options)
  :config
  (
   ;;(irony-install-server)
   ;;(when (boundp 'w32-pipe-read-delay)
   ;; (setq w32-pipe-read-delay 0))
   ;;(when (boundp 'w32-pipe-buffer-size)
   ;; (setq irony-server-w32-pipe-buffer-size (* 64 1024)))
   )
  )

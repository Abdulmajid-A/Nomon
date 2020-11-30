;;rebinds the vterm-copy-mode to C-c C-k (same as to cahr mode in term)
(with-eval-after-load "vterm-mode"
  ;;remaps vterm copy mode in the normal vterm mode map
  (define-key vterm-mode-map (kbd "C-c C-t") nil)
  (define-key vterm-mode-map (kbd "C-c C-k") 'vterm-copy-mode)
  ;;remaps vterm copy mode in the vterm copy mode map
  (define-key vterm-copy-mode-map (kbd "C-c C-t") nil)
  (define-key vterm-copy-mode-map (kbd "C-c C-k") 'vterm-copy-mode)
  )


(message "loaded vterm_rebind_copy_mode")

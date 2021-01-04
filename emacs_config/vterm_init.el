(unless (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
  ;;last check for emacs module support
  (when (and (executable-find "cmake") (executable-find "libtool") (boundp 'module-file-suffix))
    (use-package vterm
      :straight t
      :config
      (setq vterm-max-scrollback 4096)
      (setq vterm-timer-delay nil)
      :bind
      (
       :map vterm-mode-map
       ("C-c C-t" . nil)
       ("C-c C-k" . vterm-copy-mode)
       :map vterm-copy-mode-map
       ("C-c C-t" . nil)
       ("C-c C-k" . vterm-copy-mode)
       )
      )
    )
  (unless module-file-suffix
    (unless (f-exists? ".locks/vterm_init_module_support_warning.lk")
      (read-string "VTerm needs module support.  Please compile Emacs with  the --with-modules option!")
      (f-touch ".locks/vterm_init_module_support_warning.lk")
      )
    )
  (unless (executable-find "cmake")
    (unless (f-exists? ".locks/vterm_init_cmake_warning.lk")
      (read-string "You don't have Cmake in your system thus vterm will not be installed")
      (f-touch ".locks/vterm_init_cmake_warning.lk")
      )
    )
  (unless (executable-find "libtool")
    (unless (f-exists? ".locks/vterm_init_libtool_warning.lk")
      (read-string "You don't have libtool-bin in your system thus vterm will not be installed")
      (f-touch ".locks/vterm_init_libtool_warning.lk")
      )
    )
  )

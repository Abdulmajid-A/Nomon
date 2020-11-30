;;configuration for rust-mode

;;to include rust-mode when emacs starts
(require 'rust-mode)

;;follow rust convention in using spaces for indentation than taps
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;;formats the file on save
(setq rust-format-on-save t)

;;bind keys for r(run), c(compile) and t(test)
(define-key rust-mode-map (kbd "C-c C-r") 'rust-run)
(define-key rust-mode-map (kbd "C-c C-c") 'rust-compile)
(define-key rust-mode-map (kbd "C-c C-t") 'rust-test)


(message "loaded rust_mode_config")

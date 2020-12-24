(unless (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
  (use-package vterm
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

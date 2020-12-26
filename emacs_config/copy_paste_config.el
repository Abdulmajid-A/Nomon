;;configuration to enable copy and paste from emacs to the system
(setq x-select-enable-clipboard t)
(unless (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
  (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
  )

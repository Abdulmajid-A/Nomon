;;configuration to enable copy and paste from emacs to the system
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

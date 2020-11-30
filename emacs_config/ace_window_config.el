;;configuration for the ace-window package
(require 'ace-window)

;;bind it to the given key
(global-set-key (kbd "C-x o") 'ace-window)

;;remove the gray background
;;(with-eval-after-load "ace-window-display-mode"
;;  (setq aw-background nil))

;;until we find what ace-window-mode and ...display-mode they mean we will suppstute the above with this
;;(setq aw-background nil)
     
(message "loaded ace-window config")

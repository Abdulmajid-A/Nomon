;;increase the maximum number of lines to be in the buffer from 1000(defualt) to 4096
;;this code should change the value based on system memory so that it can increase or decrese
(with-eval-after-load "vterm"
  (setq vterm-max-scrollback 4096)
  )

(message "loaded vterm_max_scrollback_config")

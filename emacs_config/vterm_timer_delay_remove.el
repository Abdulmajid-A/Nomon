;;remove the 0.1 timer delay in vterm
(with-eval-after-load "vterm"
  (setq vterm-timer-delay nil)
  (message "timer delay removed")
  )

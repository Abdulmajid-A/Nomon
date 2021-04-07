;;split the screen 3 ways first in the middle then 1 below
;;
;;_____________
;;|  A  |  B  |
;;|_____|_____|
;;|     C     |
;;|___________|


(when (window-system)
  (split-window-below)
  (split-window-right)


  ;;after splitting change what is shown in the buffers
  (other-window 1);;goto the one on the right
  (switch-to-buffer "*scratch*")

  (other-window 1);;goto the one below
  (switch-to-buffer "*Messages*")

  (other-window 1);;return to the first one
  ;;resize the hight of the upper windows to take 70% of the screen
  (window-resize nil (- (truncate (* 0.7 (frame-height))) (window-height)))
  )

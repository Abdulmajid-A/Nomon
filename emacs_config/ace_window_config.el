;;configuration for the ace-window package


(use-package ace-window
  :straight t
  :bind (
	 ("C-x o" . ace-window)
	 )
  )

;;bind it to the given key

;;remove the gray background(PUT IT INSIDE USE PACKAGE
;;(with-eval-after-load "ace-window"
;;  (setq aw-background nil))





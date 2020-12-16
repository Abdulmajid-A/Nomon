;;to enable wordwrap for org mode (per buffer base)

(add-hook 'org-mode-hook
	  (lambda ()
            ;; make the lines in the buffer wrap around the edges of the screen.
            (visual-line-mode)
            (org-indent-mode)
	    )
	  )

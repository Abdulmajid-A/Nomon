;;rebind M-n and M-p in term mode
;;rebind the M-n and M-p to M-N and M-P
(add-hook 'term-mode-hook	
	  (lambda ()
	    (define-key term-mode-map (kbd "M-n") nil)
	    (define-key term-mode-map (kbd "M-p") nil)
	    (define-key term-mode-map (kbd "M-N") 'term-next-input)
	    (define-key term-mode-map (kbd "M-P") 'term-previous-input)
	    ))


(message "loaded term_rebind...")

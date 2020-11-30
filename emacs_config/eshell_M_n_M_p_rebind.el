;;rebind the M-n and M-p to M-N and M-P
(add-hook 'eshell-hist-mode-hook	
	  (lambda ()
	    (define-key eshell-hist-mode-map (kbd "M-n") nil)
	    (define-key eshell-hist-mode-map (kbd "M-p") nil)
	    (define-key eshell-hist-mode-map (kbd "M-N") 'eshell-next-matching-input-from-input)
	    (define-key eshell-hist-mode-map (kbd "M-P") 'eshell-previous-matching-input-from-input)
	    ))


(message "loaded eshell_M_n_M_p")

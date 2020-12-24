;;used to initilize org mode and bind the some gloable keys

(defun enable_visual_line_mode_and_org_indent_mode ()
  (visual-line-mode)
  (org-indent-mode)
  )

(use-package org
  :config
  (setq org-log-done t)
  (setq org-emphasis-alist '(("*" (:foreground "#C57F39")) ("*" bold) ("/" italic) ("_" underline) ("=" org-verbatim verbatim) ("~" org-code verbatim) ("+" (:strike-through t))))
  (add-hook 'org-mode-hook 'enable_visual_line_mode_and_org_indent_mode
	    )
  :bind (("C-c l" . org-store-link)
	 ("C-c a" . org-agenda)
	 )
  )
;;(require 'org)
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-ca" 'org-agenda)

;;(setq org-emphasis-alist '(("*" (:foreground "#C57F39")) ("*" bold) ("/" italic) ("_" underline) ("=" org-verbatim verbatim) ("~" org-code verbatim) ("+" (:strike-through t))))

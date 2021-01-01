(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-dark+ t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  
  ;; Enable custom neotree theme (all-the-icons must be installed!)
;;  (unless (= (length (straight-check-package-git-version "all-the-icons")) 0)
;;    (read-string "Since you have all-the-icons installed we will enable neotree (ok)")
;;    (doom-themes-neotree-config)
;;    )

;;  (when (= (length (straight-check-package-git-version "all-the-icons")) 0)
;;    (read-string "Since you don't have all-the-icons installed we will enable treemacs (ok)")
    (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
    (doom-themes-treemacs-config)
;;    )
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

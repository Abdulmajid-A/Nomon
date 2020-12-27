(defun straight-check-package-git-version (package)
  (interactive
   (list
    (straight--select-package "Package" nil 'installed)))
  (let ((recipe (gethash package straight--recipe-cache))
        version)
    (straight--with-plist recipe
        (local-repo type)
      (when (and (eq type 'git) local-repo)
        (let ((default-directory (straight--repos-dir local-repo)))
          (setq version (or (magit-git-string "describe" "--tags" "--dirty")
                            (magit-rev-parse "--short" "HEAD")))
	  ;;          (message "%s %s" (upcase-initials package) version)
          version)))))

(use-package all-the-icons
  :straight t
  :config
  (when (= (length (straight-check-package-git-version "all-the-icons")) 0)
    (unless (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
      (all-the-icons-install-fonts)
      )
    (when (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
      (read-string "Since you're in Windows you have to manually run the command all-the-icons-install-fonts (ok)")
      )
    )
  )

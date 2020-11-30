(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(vterm ace-window rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;copied from https://www.emacswiki.org/emacs/DotEmacsModular  and modified
;; default xemacs configuration directory
(defconst aconf:emacs-config-dir "~/.emacs.d/emacs_config/" "")

;; utility function to auto-load my package configurations
(defun aconf:load-config-file (filelist)
  (dolist (file filelist)
    (load (expand-file-name 
           (concat aconf:emacs-config-dir (concat file ".el"))))
    (message "Loaded config file:%s" file)
    ))

;; load my configuration files
(aconf:load-config-file '("copy_paste_config"
			  "ace_window_config"
			  "rust_mode_config"
			  "toolbar_config"
			  "eshell_password_cache_config"
			  "tmux_term_paragraph_dir_config"
			  "vterm_rebind_copy_mode"
                        ))
;;			"eshell_M_n_M_p_rebind"
;;			"term_rebind_M_n_and_M_p.el"

;;this file is meant to be used for initializing the enviroment and loading all config and packages needed
;;note that we can do it in init.el but we will doe it here to make the init.el much cleaner and simpler


;; utility function to auto-load my package configurations
(defun aconf:load-config-file (filelist)
  (dolist (file filelist)
    (if (not (string-match "config_packages_loader" ""))
	(progn
	  (load (expand-file-name 
		 (concat aconf:emacs-config-dir (concat file ".el"))))
	  (message "Loaded config file:%s" file)
	  )
      (message "trying to load config_packages_loader which is forbiden")
      )
    ))

;; load my configuration files
(aconf:load-config-file '("use_package_config"
			  "backup_config"
			  "restart_emacs_mod_config"
			  "copy_paste_config"
			  "ace_window_config"
			  "rust_mode_config"
			  "toolbar_config"
			  "eshell_password_cache_config"
			  "tmux_term_paragraph_dir_config"
			  "vterm_init"
			  "vterm_timer_delay_remove"
			  "vterm_rebind_copy_mode"
			  "vterm_max_scrollback_config"
			  "search_highlight_color_change"
			  "region_highlight_color_change"
			  "browse_kill_ring_init"
			  "org_init"
			  "org_wordwrap_config"
			  "column_number_config"
                          ))
;;			"eshell_M_n_M_p_rebind"
;;			"term_rebind_M_n_and_M_p.el"


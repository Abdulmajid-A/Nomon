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
(aconf:load-config-file '("straight_init"
			  "use_package_config"
			  "dired_config"
			  "dired_x_config"
			  "magit_init"
			  "dash_init"
			  "async_init"
			  "async_dired_init"
			  "f_init"
			  "s_init"
			  "anzu_init"
			  "auto_highlight_symbol_init"
			  "expand_region_init"
			  "hl_todo_init"
			  "move_text_init"
			  "markdown_mode_init"
			  "yaml_mode_init"
			  "backup_config"
			  "restart_emacs_mod_config"
			  "copy_paste_config"
			  "ace_window_config"
			  "rust_mode_config"
			  "toolbar_config"
			  "vterm_init"
			  "search_highlight_color_change"
			  "region_highlight_color_change"
			  "org_init"
			  "column_number_config"
			  "flySpell_enable_mode_hook_config"
			  "menu_bar_config"
			  "scroll_bar_config"
			  "bell_sound_remove_win"
			  "recentf_init"
			  "helm_init"
			  "minions_init"
			  "all_the_icons_init"
			  "neotree_init"
			  "doom_moodline_init"
			  "doom_theme_init"
			  "helm_grep_face_config"
			  "auto_package_update_init"
			  "open_full_screen"
			  "split_screen_on_startup"
			  "force_wrap_lines_config"
			  "fill_column_indicator_config"
			  "fill_column_value_config"
                          ))

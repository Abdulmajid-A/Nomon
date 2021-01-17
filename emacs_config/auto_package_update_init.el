(when (or (not(f-exists? (nomon:concat_config_dir ".locks/auto_package_update_last_check.lk")))
	  (not(s-equals? (f-read-text (nomon:concat_config_dir ".locks/auto_package_update_last_check.lk")) (format-time-string "%Y:%m:%d"))))
  (use-package auto-package-update
    :straight t
    :if window-system
    :config
    (setq auto-package-update-prompt-before-update t)
    (setq auto-package-update-delete-old-versions t)
    (unless (f-exists? (nomon:concat_config_dir ".locks/auto_package_update_last_check.lk"))
      (f-touch (nomon:concat_config_dir ".locks/auto_package_update_last_check.lk"))
      )
    (f-write-text (format-time-string "%Y:%m:%d") 'utf-8 (nomon:concat_config_dir ".locks/auto_package_update_last_check.lk"))
    ;;(setq auto-package-update-hide-results t)
    (auto-package-update-maybe)
    )

  )

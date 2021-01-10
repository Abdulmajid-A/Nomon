(when (or (not(f-exists? ".locks/auto_package_update_last_check.lk"))
	  (s-less? (f-read-text ".locks/auto_package_update_last_check.lk") (format-time-string "%Y:%m:%d")))
  (use-package auto-package-update
    :straight t
    :if window-system
    :config
    (setq auto-package-update-prompt-before-update t)
    (setq auto-package-update-delete-old-versions t)
    (unless (f-exists? ".locks/auto_package_update_last_check.lk")
      (f-touch ".locks/auto_package_update_last_check.lk")
      )
    (f-write-text (format-time-string "%Y:%m:%d") 'utf-8 ".locks/auto_package_update_last_check.lk")
    ;;(setq auto-package-update-hide-results t)
    (auto-package-update-maybe)
    )

  )

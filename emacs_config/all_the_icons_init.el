(use-package all-the-icons
  :straight t
  :config
  ;;note that puting ../.locks will not work as these files are loaded into config_pac... which is loaded into init.el
  ;;hence when this code runs it runs in .emacs.d dir not .emacs.d/emacs_config dir TODO find a better solution
  (unless (f-exists? ".locks/all_the_icons.lk");;all-the-icons wasn't installed or the user deleted the lk file (:
    (when (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
      (read-string "Since you're on Windows machine you have to choose a directory to install all-the-icons in the following message")
      )
    (all-the-icons-install-fonts)
    (unless (f-exists? ".locks");;TODO move the creation of locks dir to a gloable file creator
      (f-mkdir ".locks")
      )
    (f-touch ".locks/all_the_icons.lk")
    )
  )

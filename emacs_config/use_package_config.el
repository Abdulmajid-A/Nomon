;;initilize and load use-packge if not existing this must be the first config to be loaded
(dolist (package '(use-package))
  ;;if not existent download it
  (unless (package-installed-p package)
    (package-install package)))

(eval-when-compile
  (require 'use-package)
  )

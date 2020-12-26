;;initilize and load use-packge if not existing. This must be the first config to be loaded
;;(dolist (package '(use-package))
  ;;if not existent download it
;;  (unless (package-installed-p package)
;;   (package-install package)))


;;download it using straight
(straight-use-package 'use-package)

(eval-when-compile
  (require 'use-package)
  )

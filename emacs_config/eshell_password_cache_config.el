;;configuration for eshell password caching
;;HERE wrote for sudo caching in eshell it may have side effects idon't know
(require 'em-tramp) ; to load eshell’s sudo
(setq eshell-prefer-lisp-functions t)
(setq password-cache t) ; enable password caching t-> true nil-> false
(setq password-cache-expiry 600) ; for 10 minutes (time in secs)

(message "loaded eshell_password_cache_config")

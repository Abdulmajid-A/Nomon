;;enable flyspell in text mode (and derived modes latex,tex, org..)
(use-package flyspell-mode
:straight (org :type built-in)
  :hook text-mode)
;;(add-hook 'text-mode-hook 'flyspell-mode)

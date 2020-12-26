;;only applies to emacs 27.0.90+

(unless (version< emacs-version "27.0.90")
  (display-fill-column-indicator-mode +1)
  )

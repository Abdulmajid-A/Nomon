;;use RG when found
(when (executable-find "rg")
  (setq helm-grep-ag-command "rg --color=always --smart-case --no-heading --line-number %s %s %s")
  )

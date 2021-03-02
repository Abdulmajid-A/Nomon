(defun nomon:set_add_plantuml_to_org_func ()
  ;;to edit plantuml code in org we add the following
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))  
  )

(use-package plantuml-mode
  :straight t
  :init
  (setq plantuml-jar-path (nomon:concat_config_dir "jars/plantuml/plantuml.jar"))
  (setq plantuml-default-exec-mode 'jar)
  :config
  ;;enables plantuml mod for files with the extentions plantuml
  (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
  :hook
  (org-load . nomon:set_add_plantuml_to_org_func)
  )

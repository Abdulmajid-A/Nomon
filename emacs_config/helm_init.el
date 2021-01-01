;;see http://tuhdo.github.io/helm-intro.html


(defun tuhdo//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(defun aconf:eshell-key-rebind-for-helm ()
  (define-key eshell-mode-map (kbd "C-c C-l")  'helm-eshell-history)
  )

(use-package helm
  :straight t
  :init
  (helm-mode 1)
  :config
  (when (executable-find "curl")
    (setq helm-google-suggest-use-curl-p t)
    )
  (setq helm-split-window-in-side-p           t
	helm-move-to-line-cycle-in-source     t
	helm-ff-search-library-in-sexp        t
	helm-scroll-amount                    8
	helm-ff-file-name-history-use-recentf t
	helm-echo-input-in-header-line t
	)

  ;;HOOKS - START

  (add-hook 'helm-minibuffer-set-up-hook 'tuhdo//helm-hide-minibuffer-maybe)

  (add-hook 'eshell-mode-hook 'aconf:eshell-key-rebind-for-helm)

  ;;HOOKS - END

  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)
  ;;to test
  (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

  :bind
  (
   ("C-x c" . nil);;unbind helm-command-prefix from C-x C then bind it to C-c h
   ("C-c h" . helm-command-prefix)
   ("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)
   ("C-x b" . helm-mini)
   ("C-x C-f" . helm-find-files)
   ("C-c h o" . helm-occur)
   ("C-s" . helm-occur);;untile we see an error we will use this
   ("C-r" . helm-occur);;same as above
   ("C-h a" . helm-apropos)
   ("C-h SPC" . helm-all-mark-rings)
   ("C-c h x" . helm-register)
   ("C-c h g" . helm-google-suggest);;in windows be carefull of fast typing as it will result in an error
   ("C-c h M-:" . helm-eval-expression-with-eldoc)
   ("M-g a" . helm-do-grep-ag)
   :map helm-map ;;so that we don't use the arrows inside helm (by default theys keys are used to move text up/down)
   ("M-n" . helm-next-source)
   ("M-p" . helm-previous-source)
   :map emacs-lisp-mode-map
   ("C-M-i" . helm-lisp-completion-at-point)
   ("C-<return>" . helm-lisp-completion-at-point);;FOR NOW ONLY MAY CHANGE LATER BASED ON PACKAGES
   :map lisp-interaction-mode-map ;;for the scratches buffer and any similar
   ("C-M-i" . helm-lisp-completion-at-point)
   ("C-<return>" . helm-lisp-completion-at-point);;FOR NOW ONLY MAY CHANGE LATER BASED ON PACKAGESs
   :map shell-mode-map
   ("C-c C-l" . helm-comint-input-ring)
   :map minibuffer-local-map
   ("C-c C-l" . helm-minibuffer-history)
   ("C-M-i" . helm-lisp-completion-at-point)
   ("C-<return>" . helm-lisp-completion-at-point)
   )
  )

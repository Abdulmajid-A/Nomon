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

  (add-hook 'helm-minibuffer-set-up-hook
            'tuhdo//helm-hide-minibuffer-maybe)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)

  :bind
  (
   ("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)
   ("C-x b" . helm-mini)
   ("C-x C-f" . helm-find-files)
   :map helm-map ;;so that we don't use the arrows inside helm (by default theys keys are used to move text up/down)
   ("M-n" . helm-next-source)
   ("M-p" . helm-previous-source)
   )
  )

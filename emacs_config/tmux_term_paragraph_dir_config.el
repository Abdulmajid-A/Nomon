;;tells it where the paragrapgh will be from so that it becomes faster and doesn't guess every input
(add-hook 'term-mode-hook
      (defun my-term-mode-hook ()
	(setq bidi-paragraph-direction 'left-to-right)))

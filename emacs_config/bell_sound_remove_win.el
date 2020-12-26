;;remove the bell sound in windows
(when (or (eq system-type 'windows-nt) (eq system-type 'ms-dos))
(setq visible-bell t)
)

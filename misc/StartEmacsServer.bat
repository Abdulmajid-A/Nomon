rem Clean previous server file info first
del /q ""%HOME%\\.emacs.d\\server\\*""
"C:\\Program Files\\Emacs\\x86_64\\bin\\runemacs.exe" --daemon ""(setq default-directory "~/")""
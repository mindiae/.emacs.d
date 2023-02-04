;;; lsp-tailwindcss-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "lsp-tailwindcss" "lsp-tailwindcss.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from lsp-tailwindcss.el

(autoload 'lsp-tailwindcss-rustywind "lsp-tailwindcss" "\
[Experimental] Sort tailwindcss class name using rustywind.
This is an *experimental* feature, please be careful when use." t nil)

(autoload 'lsp-tailwindcss-rustywind-before-save "lsp-tailwindcss" "\
[Experimental] Run rustywind when saving buffer.
By add this to `before-save-hook',
it only runs when lsp-tailwindcss can be activated,
see `lsp-tailwindcss--activate-p'.
This is an *experimental* feature, please use it carefully." nil nil)

(autoload 'lsp-tailwindcss-installed-server-version "lsp-tailwindcss" "\
[Experimental] Get the installed version of tailwindcss language server." t nil)

(register-definition-prefixes "lsp-tailwindcss" '("lsp-tailwindcss-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-tailwindcss-autoloads.el ends here

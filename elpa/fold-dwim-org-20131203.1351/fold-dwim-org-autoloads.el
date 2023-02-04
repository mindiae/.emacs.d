;;; fold-dwim-org-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fold-dwim-org" "fold-dwim-org.el" (0 0 0 0))
;;; Generated autoloads from fold-dwim-org.el

(autoload 'fold-dwim-org/minor-mode "fold-dwim-org" "\
Toggle fold-dwim-org minor mode.
With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

This is a minor mode.  If called interactively, toggle the
`Fold-Dwim-Org/Minor mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `fold-dwim-org/minor-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

When fold-dwim-org minor mode is enabled, the TAB key toggles the
visible state of the code, and shift TAB toggles the visible
state of the entire file.

You can customize the key through `fold-dwim-org/trigger-key-block'.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "fold-dwim-org" '("fold-dwim-org"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fold-dwim-org-autoloads.el ends here

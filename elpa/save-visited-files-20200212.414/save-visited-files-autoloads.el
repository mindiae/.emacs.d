;;; save-visited-files-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "save-visited-files" "save-visited-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from save-visited-files.el

(autoload 'save-visited-files-save "save-visited-files" "\
Save the list of currently visited files

\(fn &optional LOCATION)" t nil)

(autoload 'save-visited-files-restore "save-visited-files" "\
Restore all files that were saved by save-visited-files-save.

\(fn &optional LOCATION)" t nil)

(defvar save-visited-files-mode nil "\
Non-nil if Save-Visited-Files mode is enabled.
See the `save-visited-files-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `save-visited-files-mode'.")

(custom-autoload 'save-visited-files-mode "save-visited-files" nil)

(autoload 'save-visited-files-mode "save-visited-files" "\
Minor mode to automatically save a list of all open files, and
optionally open all files from such a list at startup.

This is a minor mode.  If called interactively, toggle the
`Save-Visited-Files mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='save-visited-files-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-save-visited-files-mode "save-visited-files" "\
Turns save-visited-files-mode on" t nil)

(autoload 'turn-off-save-visited-files-mode "save-visited-files" "\
Turns save-visited-files-mode off" t nil)

(register-definition-prefixes "save-visited-files" '("save-visited-files-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; save-visited-files-autoloads.el ends here

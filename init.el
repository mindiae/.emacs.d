(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-buffer-indent 2)
 '(custom-safe-themes
   '("72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" default))
 '(dir-treeview-show-backup-files t)
 '(dir-treeview-show-hidden-files nil)
 '(display-line-numbers t)
 '(flymake-python-pyflakes-executable "flake8")
 '(font-use-system-font t)
 '(frame-background-mode 'dark)
 '(global-auto-revert-mode t)
 '(global-origami-mode t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js3-enter-indents-newline t)
 '(js3-indent-on-enter-key t)
 '(js3-indent-tabs-mode t)
 '(js3-reparse-on-indent nil)
 '(neo-theme 'nerd)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("MEPLA" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(auto-org-md svelte-mode org-ac ac-html ac-js2 nodejs-repl ob-deno babel-repl ob-typescript blacken flymake-python-pyflakes meson-mode drag-stuff speechd-el company-fuzzy company-shell company-web flymake-eslint flymake flycheck-jest flycheck neotree prettier-js origami bicycle vala-mode js3-mode dirtree gruvbox-theme monokai-alt-theme ewal-spacemacs-themes color-theme-sanityinc-solarized anti-zenburn-theme arjen-grey-theme badger-theme omtose-phellack-theme alect-themes web-mode js-doc graphql-mode js2-refactor emacsql-sqlite emacsql pcsv csv-mode eslint-fix eslintd-fix vue-mode save-visited-files fold-dwim-org fold-dwim folding validate-html json-mode js2-mode multi-term request org-dp nov bug-hunter duplicate-thing restclient dir-treeview dict-tree phps-mode lsp-tailwindcss magit))
 '(pixel-scroll-mode t)
 '(python-indent-offset 2)
 '(save-place-mode t)
 '(sgml-validate-command "tidy")
 '(truncate-lines nil)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-closing nil)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "<f9>") 'dir-treeview)
(setq-default indent-tabs-mode nil)
;;(load-theme 'misterioso)
(load-theme 'gruvbox-dark-medium)
;;(load-theme 'alect-black-alt)
;;(load-theme 'alect-dark)
(defun mhtml-forward (arg)
  (interactive "P")
  (pcase (get-text-property (point) 'mhtml-submode)
    ('nil (sgml-skip-tag-forward 1))
    (submode (forward-sexp))))

;; Adds the tag and curly-brace detection to hs-minor-mode for mhtml.
(add-to-list 'hs-special-modes-alist
             '(mhtml-mode
               "{\\|<[^/>]+?"
               "}\\|</[^/>]*[^/]>"
               "<!--"
               mhtml-forward
               nil))

;;(add-hook 'vue-mode-hook #'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'web-mode-hook 'emmet-mode) ;; Auto-start on any web modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(global-set-key (kbd "M-c") 'duplicate-thing)
(global-set-key (kbd "M-e") 'comment-line)
(global-set-key (kbd "C-t") 'origami-toggle-all-nodes)
(global-set-key (kbd "C-<return>") 'origami-toggle-node)
(global-set-key (kbd "C-n") 'neotree-toggle)
(global-set-key (kbd "M-<down>") 'drag-stuff-down)
(global-set-key (kbd "M-<up>") 'drag-stuff-up)

;;(ac-config-default)
(require 'auto-complete)
(ac-config-default)
(global-auto-complete-mode t)
;;(add-hook 'js2-mode-hook 'ac-js2-mode)
;;(add-to-list 'ac-modes 'js2-mode)
;;(add-hook 'js2-mode-hook 'auto-complete-mode)
(add-hook 'web-mode-hook 'auto-complete-mode)
(add-hook 'svelte-mode-hook 'auto-complete-mode)
;;(global-company-fuzzy-mode 1)
;;(yas-global-mode 1)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.svelte\\'" . svelte-mode))
(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(drag-stuff-global-mode)


(add-hook 'js2-mode-hook
          #'(lambda ()
              (define-key js2-mode-map "\C-ci" 'js-doc-insert-function-doc)
              (define-key js2-mode-map "@" 'js-doc-insert-tag)))

(require 'recentf)
(recentf-mode 1)
(add-to-list 'default-frame-alist '(background-color . "#262626"))

(add-hook 'js2-mode-hook 'prettier-js-mode)
;;(add-hook 'js2-mode-hook #'eslintd-fix-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
;;(add-hook 'web-mode-hook #'eslintd-fix-mode)
(add-hook 'json-mode-hook 'prettier-js-mode)
(add-hook 'svelte-mode-hook 'prettier-js-mode)
(add-hook 'html-mode-hook 'prettier-js-mode)
(add-hook 'js2-mode-hook #'flymake-eslint-enable)
(add-hook 'web-mode-hook #'flymake-eslint-enable)
(add-hook 'svelte-mode-hook #'flymake-eslint-enable)
(add-hook 'html-mode-hook #'flymake-eslint-enable)

;; (eval-after-load 'js2-mode
;;       '(add-hook 'js2-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))
;; (eval-after-load 'web-mode
;;       '(add-hook 'web-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))

(setq make-backup-files nil) ; stop creating ~ fi

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this-word)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)

(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")

(add-hook 'python-mode-hook 'blacken-mode)
(server-start) ; start emacs server

;;(add-to-list 'load-path "~/.emacs.d/my-packages/ob-js.el")
;;(require 'ob-js)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((js . t)))



;;; init-cmp.el --- Description -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

;; Enable corfu
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-prefix 2)
  (corfu-count 12)
  (corfu-cycle t)
  (corfu-quit-at-boundary 'separator)
  (corfu-quit-no-match t)
  :init
  (global-corfu-mode))

;; Enable cape
(use-package cape
  :commands (cape-file cape-elisp-block cape-keyword cape-elisp-symbol cape-dabbrev)
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  (add-to-list 'completion-at-point-functions #'cape-elisp-symbol)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

;; Enable vertico
(use-package vertico
  :custom
  (vertico-count 15)
  :bind (:map vertico-map
	      ("RET" . vertico-directory-enter)
	      ("DEL" . vertico-directory-delete-char)
	      ("M-DEL" . vertico-directory-delete-word))
  :init
  (vertico-mode t))

;; Enable marginalia
(use-package marginalia
  :hook (after-init . marginalia-mode))

;; Enable consult
;; TODO

;; Enable orderless
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles basic partial-completion))))
  (orderless-component-separator #'orderless-escapable-split-on-space))

;; Enabke embark
(use-package embark
  :bind (("C-." . embark-act)
	 ("C-;" . embark-dwim)
	 ("C-h B" . embark-bindings))
  :init
  (setq prefix-help-command #'embark-prefix-help-command))

;; Emacs utils
(use-package emacs
  :custom
  (context-menu-mode t)
  (enable-recursive-minibuffers t)
  (read-extended-command-predicate #'command-completion-default-include-p)
  (minibuffer-prompt-properties
   '(read-only t cursor-intangible t face minibuffer-prompt)))

(provide 'init-cmp)
;;; init-cmp.el ends here

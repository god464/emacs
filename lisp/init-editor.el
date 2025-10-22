;;; init-editor.el --- Description -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

;; Enable lispy
(elpaca lispy
  :hook ((lisp-mode . lispy-mode)
	 (emacs-lisp-mode . lisp-mode))
  :init (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1))))

(provide 'init-editor)
;;; init-editor.el ends here

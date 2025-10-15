;;; init.el --- My Config -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025 god464
;;
;; Author: god464 <god464@cachyos-x8664>
;; Maintainer: god464 <god464@cachyos-x8664>
;; Created: 十月 13, 2025
;; Modified: 十月 13, 2025
;; Version: 0.0.1
;; Homepage: https://github.com/god464/emacs
;; Package-Requires: ((emacs "30.2"))
;;
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq cursor-type 'bar)
(global-display-line-numbers-mode t)
(setq make-backup-files nil)
(global-hl-line-mode 1)
(show-paren-mode 1)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'no-error 'no-message)

(require 'init-cmp)
(require 'init-editor)

(provide 'init)
;;; init.el ends here

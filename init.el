;;; init.el --- My Config -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025 god464
;;
;; Author: god464 <god464@cachyos-x8664>
;; Maintainer: god464 <god464@cachyos-x8664>
;; Created: 十月 13, 2025
;; Modified: 十月 13, 2025
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
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

(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")

                         ("nognu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nognu/")

                         ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))



(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path user-emacs-directory)
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'no-error 'no-message)

(require 'init-cmp)
(require 'init-editor)

(provide 'init)
;;; init.el ends here

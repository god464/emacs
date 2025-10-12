
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq cursor-type 'bar)
(global-display-line-numbers-mode t)
(setq make-backup-files nil)
(global-hl-line-mode 1)
(show-paren-mode 1)

(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("nognu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nognu/")
			 ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'no-error 'no-message)

(require 'init-cmp)
(require 'init-editor)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Enable xterm mouse mode.
(xterm-mouse-mode)

;; Use anaphoric macros, because they're cool.
(push "~/.emacs.d/anaphora" load-path)
(require 'anaphora)

;; Set the default shell (prefer zsh, since emacs doesn't seem to be able to deal with
;; ansi title bar sequences from fish).
(aif (executable-find "zsh")
  (setenv "ESHELL" it))

;; List installed packages
(push "~/.emacs.d/use-package" load-path)
(require 'use-package)

;; Magit requires at least emacs version 24.4
(use-package magit
  :ensure t)

;; Monokai color scheme.
(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))

;; Autocomplete.
(use-package auto-complete
  :ensure t
  :config (global-auto-complete-mode t))

;; Vim emulation layer. Disabled by default.
(use-package evil
  :ensure t)

;; Ace-jump-mode
(use-package ace-jump-mode
  :ensure t
  :config (define-key global-map (kbd "C-c SPC") 'ace-jump-mode))

;; Helm package.
(use-package helm
  :ensure t
  :config (progn
	    (helm-mode 1)
	    (global-set-key (kbd "M-x") 'helm-M-x) ;; Use helm-M-x
	    (global-set-key (kbd "C-x C-f") 'helm-find-files) ;; Use helm-find-files
	    ))

;; Modes for various languages.
(use-package haskell-mode :ensure t) ;; Haskell
(use-package markdown-mode :ensure t) ;; Markdown
(use-package lua-mode :ensure t) ;; Lua
(use-package go-mode :ensure t) ;; Golang.

;; The famous org-mode
(use-package org :ensure t)

;; Floobits collaboration.
(use-package floobits :ensure t)

;; C-x C-b invokes buffer-menu instead of list-buffers
(global-set-key "\C-x\C-b" 'buffer-menu)

;; Window navigation
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
   '(("." . "~/.saves"))
   )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "0a1a7f64f8785ffbf5b5fbe8bca1ee1d9e1fb5e505ad9a0f184499fe6747c1af" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "0b6645497e51d80eda1d337d6cabe31814d6c381e69491931a688836c16137ed" "0ae52e74c576120c6863403922ee00340a3bf3051615674c4b937f9c99b24535" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



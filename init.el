;;; init.el --- Emacs init config

;;; Commentary:
;;; Emacs config for Vim user

;;; Code:

;; common settings
;; no cursor blink
(blink-cursor-mode 0)
;; no splash
(setq inhibit-startup-message t)
;; scroll behavior
(setq scroll-margin 3)
(setq scroll-conservatively 100)
;; default major mode
(setq-default major-mode 'text-mode)
;; set title to 'buffer @ file'
(setq frame-title-format "%b @ %f")
;; show maching parenthesis
(show-paren-mode t)
(setq show-paren-style 'mixed)
;; more highlight
(require 'generic-x)
;; setting for window system
(if window-system
    (progn
      ;; yank at cursor, not at click
      (setq mouse-yank-at-point t)
      ;; disable tool bar
      (tool-bar-mode -1)))

;; elpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; evil
(require 'evil)
(evil-mode t)
(setq evil-esc-delay 0)
;; evil-matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)
;; evil-surround
(require 'evil-surround)
(global-evil-surround-mode 1)
;; evil-nerd-commenter
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

;; zenburn
(load-theme 'zenburn t)

;; powerline
(require 'powerline)
(powerline-center-evil-theme)
(setq powerline-default-separator 'zigzag)

;; git-gutter-fringe
(if window-system
    (progn
      (require 'git-gutter-fringe))
  (require 'git-gutter))
(global-git-gutter-mode +1)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here

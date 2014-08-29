;;; Init --- Emacs init config

;;; Commentary:

;;; Code:
;; common settings
; no cursor blink
(blink-cursor-mode 0)
; no splash
(setq inhibit-startup-message t)
; scroll behavior
(setq scroll-margin 3)
(setq scroll-conservatively 100)
; default major mode
(setq major-mode 'text-mode)
; set title to 'buffer @ file'
(setq frame-title-format "%b @ %f")
; show maching parenthesis
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; elpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; evil
(require 'evil)
(evil-mode t)

;; zenburn
(load-theme 'zenburn t)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here

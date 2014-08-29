;;; Init --- Emacs init config

;;; Commentary:

;;; Code:
; common settings
(blink-cursor-mode 0)
(setq inhibit-startup-message t)
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)
(setq major-mode 'text-mode)
(setq frame-title-format "%b @ %f")

; elpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; evil
(require 'evil)
(evil-mode t)

; zenburn
(load-theme 'zenburn t)

; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here

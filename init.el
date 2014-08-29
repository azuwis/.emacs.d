(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; evil-mode
(require 'evil)
(evil-mode t)

; theme
(load-theme 'zenburn t)

(blink-cursor-mode 0)
(setq inhibit-startup-message t)
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)
(setq default-major-mode 'text-mode)
(setq frame-title-format "%b @ %f")

; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

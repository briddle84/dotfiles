(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; List the packages you want
(setq package-list '(evil
                     evil-leader
		     dracula-theme))
(add-hook 'emacs-startup-hook 'toggle-frame-maximized)
; Activate all the packages (in particular autoloads)
; (package-initialize)

; Update your local package index
; (unless package-archive-contents
;   (package-refresh-contents))

; Install all missing packages
; (dolist (package package-list)
;   (unless (package-installed-p package)
;    (package-install package)))

(require 'evil)
(evil-mode t)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader " ")
(evil-leader/set-key
  "b" 'switch-to-buffer)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(display-line-numbers 'relative)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/notes/diary.md")
 '(menu-bar-mode nil)
 '(package-selected-packages '(fzf evil which-key))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(visible-bell t)
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

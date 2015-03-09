;; .emacs

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-switches "-u")
 '(ess-R-font-lock-keywords (quote ((ess-R-fl-keyword:modifiers . t) (ess-R-fl-keyword:fun-defs . t) (ess-R-fl-keyword:keywords . t) (ess-R-fl-keyword:assign-ops . t) (ess-R-fl-keyword:constants . t) (ess-fl-keyword:fun-calls . t) (ess-fl-keyword:numbers . t) (ess-fl-keyword:operators . t) (ess-fl-keyword:delimiters) (ess-fl-keyword:=) (ess-R-fl-keyword:F&T))))
 '(inhibit-startup-screen t))

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(setq package-enable-at-startup nil)
(package-initialize)
;; Appearance
;;(load-theme 'base16-ocean t)
;;; Other Themes - variety
(load-theme 'base16-chalk t)
;;(load-theme 'zenburn t)
;;(load-theme 'solarized-dark t)
(set-default-font "-*-Source Code Pro-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;;Melpa stuff
(setq gnutls-min-prime-bits 1024)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; autocomplete
(show-paren-mode 1)
(setq show-paren-delay 0)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; evil
(ac-config-default)
(require 'evil)
(evil-mode 1)
;; Remove Menu and icons
(tool-bar-mode -1)
(menu-bar-mode -1)
;; ESS stuff
(setq ess-default-style 'DEFAULT)
(require 'ess-site)
;;(setq ess-use-auto-complete 't)
(setq ess-eval-viibly nil) ; ESS will not print the evaluated commands, also speeds up the eval
(setq ess-ask-for-ess-directory nil); not to be prompted each time you start R
;; Ido
(require 'ido-vertical-mode)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(ido-vertical-mode 1)
;; Terminal
(require 'multi-term)
(setq multi-term-program "/usr/bin/bash")
;; git stuff "Git-Gutter+"
;; (global-git-gutter+-mode t)
;; Set variables like $PATH and $MANPATH from shell on mac
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

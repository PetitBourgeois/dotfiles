(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;Basic Emacs defaults
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq-default indent-tabs-mode nil)
(global-display-line-numbers-mode)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
;;(set-face-attribute 'default nil :height 100)
;;(set-face-attribute 'default t :font 10 )
(setq make-backup-files nil)
(setq auto-save-default nil)
(toggle-frame-fullscreen)
;;(setq whitespace-style (quote (face spaces tabs space-mark tab-mark)))
;;(global-whitespace-mode)

(setq default-frame-alist '((cursor-color . "#ed38d5")))
(blink-cursor-mode 0)
(global-hl-line-mode)

(windmove-default-keybindings)

(eval-when-compile
  (require 'use-package))

(use-package dracula-theme
  :ensure t
  :init (load-theme 'dracula t))

(load-theme 'gruvbox t)

(use-package smartparens
  :ensure t
  :init (smartparens-global-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :ensure t
  :init (which-key-mode))

(use-package evil
  :ensure t
  :init (evil-mode 1)
  :bind (:map evil-insert-state-map
              ("\C-e" . end-of-line)
              ("\C-a" . beginning-of-line-text)
              ("\C-p" . previous-line)
              ("\C-n" . next-line)
              ("\C-d" . delete-char)
              ("\C-s" . delete-backward-char)
              ("\M-." . xref-find-definitions)
              ("\C-n" . flycheck-next-error)
              ("\C-p" . flycheck-previous-error)))

(use-package neotree
  :ensure t
  :init (add-hook 'neotree-mode-hook
                  (lambda ()
                    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
                    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
                    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
                    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
                    (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
                    (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
                    (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
                    (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
                    (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))
  :bind ("C-c n" . neotree-toggle))

(use-package nyan-mode
  :ensure t
  :init (nyan-mode 1))

(use-package ivy
  :ensure t
  :init (ivy-mode 1))
(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))
(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)))

;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)

(use-package multiple-cursors
  :ensure t
  :bind (("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(use-package company
  :ensure t
  :init (global-company-mode t)
  (setq company-idle-delay 0))

(use-package lsp-mode
  :commands lsp
  :init (add-hook 'c++-mode-hook #'lsp))

(require 'cquery)
(setq cquery-executable "~/programming/gits/cquery/build/release/bin/cquery")

(use-package company-lsp
  :ensure t
  :commands company-lsp
  :init (add-to-list 'company-backends 'company-lsp))

(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :config (setq projectile-completion-system 'ivy)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; WEB-DEV ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package js2-mode
  :ensure t
  :mode ("\\.js\\'" . js2-mode))
(use-package json-mode
  :ensure t
  :mode ("\\.json\\'" . json-mode))

(use-package web-mode
  :ensure t
  :init (add-hook 'web-mode-hook (lambda ()
                                   (setq web-mode-markup-indent-offset 2)
                                   (setq web-mode-css-indent-offset 2)
                                   (setq web-mode-code-indent-offset 2)))
  :mode (("\\.vue\\'" . web-mode)
         ("\\.html?\\'" . web-mode)))
(use-package web-beautify
  :ensure t
  :bind ((:map js2-mode-map
               ("C-c b" . web-beautify-js))
         (:map json-mode-map
               ("C-c b" . web-beautify-js))
         (:map html-mode-map
               ("C-c b" . web-beautify-html))
         (:map web-mode-map
               ("C-c b" . web-beautify-html))
         (:map css-mode-map
               ("C-c b" . web-beautify-css))))

(use-package emmet-mode
  :ensure t
  :hook ((sgml-mode)
         (css-mode)
         (web-mode)))



;;format
;; (require 'clang-format)
;; (global-set-key (kbd "C-c i") 'clang-format-region)
;; (global-set-key (kbd "C-c u") 'clang-format-buffer)
;; (setq clang-format-style-option "llvm")

;; (define-key c++-mode-map (kbd "C-c c") 'compile)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company company-lsp cquery lsp-mode which-key web-mode web-beautify use-package smartparens rainbow-delimiters projectile nyan-mode neotree multiple-cursors magit json-mode js2-mode gruvbox-theme flycheck evil emmet-mode dracula-theme counsel))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

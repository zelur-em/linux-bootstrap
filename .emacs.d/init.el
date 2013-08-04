<<<<<<< Updated upstream
;(add-to-list 'load-path ')

(require 'package)
(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
=======
;(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
>>>>>>> Stashed changes
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa"     . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(require 'auto-complete)

;; dirty fix for having AC everywhere
;(define-globalized-minor-mode real-global-auto-complete-mode
;  auto-complete-mode (lambda ()
;                       (if (not (minibufferp (current-buffer)))
;			   (auto-complete-mode 1))
;		       ))

;(real-global-auto-complete-mode t)

;(load "~/.emacs.d/init_auto-complete-clang.el")

;(print 'ac-dictionary-directories)

; a lot of ui auto completion
; where do i get the fuzzy matching ???
(require 'ido)
(ido-mode t)

;; snippet system . always load before hippie expand
(require 'yasnippet)

;; a lot of ui auto completion
;; where do i get the fuzzy matching ???
;;(require 'ido)
(require 'flx-ido)
(ido-mode 1)
;;(setq ido-everywhere 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)
;;(setq ido-enable-flex-matching t)

;; ido like mode for M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; originial M-x command
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; hippie expand
(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list '(yas/hippie-try-expand
					 try-expand-dabbrev 
					 try-expand-dabbrev-all-buffers 
					 try-expand-dabbrev-from-kill 
					 try-complete-file-name-partially 
					 try-complete-file-name 
					 try-expand-all-abbrevs 
					 try-expand-list try-expand-line 
					 try-complete-lisp-symbol-partially 
					 try-complete-lisp-symbol))

;; on the fly syntax checker
(require 'flymake)                                 ; show syntax errors on the fly
(require 'flymake-cursor)                          ; show error message in minibuffer
(global-set-key [f3] 'flymake-display-err-menu-for-current-line)
(global-set-key [f4] 'flymake-goto-next-error)
(add-hook 'find-file-hook 'flymake-find-file-hook) ; enable flymake for all supported filetypes
;(setq flymake-gui-warnings-enabled nil)            ; allow to show the error without X11 support
(require 'flymake-cursor)                          ; show error message in minibuffer

;highlight the other bracket
(show-paren-mode)    ; emacs builtin
;(require 'mic-paren) ; modification of show-paren-mode
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode) ; activate rainbow mode for all programming modes

;(Add-Hook 'prog-mode-hook 'flycheck-mode)
;(add-hook 'text-mode-hook 'flycheck-mode)

(require 'doc-mode)
(add-hook 'c-mode-common-hook doc-mode)

(define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)
(eval-after-load "emr" '(emr-initialize))

(setq         c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(global-linum-mode)
(setq column-number-mode t)
; (setq line-number-mode t)
(hungry-delete-mode)

(setq linum-format "%4d\u2502")

;; Emacs project managaement
(require 'projectile)
(projectile-global-mode)
(setq projectile-use-native-indexing t)
(setq projectile-enable-caching t)
;;(require 'ffap)
;;(ffap-bindings)

(setq
   backup-by-copying t                           ; don't clobber symlinks
   backup-directory-alist
   '(("." . "~/local/autogen/emacs_backup"))     ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)                            ; use versioned backups
<<<<<<< Updated upstream
;(setq make-backup-files nil)                    ; WARNING! dissable all backup files

;; set other major mode for specific file extensions
(add-to-list 'auto-mode-alist '("\\.i\\'" . fundamental-mode)) ; swig config files

;; custom files

=======

<<<<<<< Updated upstream
;(setq make-backup-files nil)                    ; WARNING! dissable all backup files
=======

(ido-mode)
;()

(setq-default c-basic-offset 4)
(setq-default c-default-style "k&r")


>>>>>>> Stashed changes
>>>>>>> Stashed changes

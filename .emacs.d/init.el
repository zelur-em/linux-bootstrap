;(add-to-list 'load-path ')

(require 'package)
(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
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

;; a lot of ui auto completion
;; where do i get the fuzzy matching ???
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; ido like mode for M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; originial M-x command
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list '(try-expand-dabbrev 
					 try-expand-dabbrev-all-buffers 
					 try-expand-dabbrev-from-kill 
					 try-complete-file-name-partially 
					 try-complete-file-name 
					 try-expand-all-abbrevs 
					 try-expand-list try-expand-line 
					 try-complete-lisp-symbol-partially 
					 try-complete-lisp-symbol))

(require 'flymake)                                 ; show syntax errors on the fly
(require 'flymake-cursor)                          ; show error message in minibuffer
(global-set-key [f3] 'flymake-display-err-menu-for-current-line)
(global-set-key [f4] 'flymake-goto-next-error)
(add-hook 'find-file-hook 'flymake-find-file-hook) ; enable flymake for all supported filetypes
;(setq flymake-gui-warnings-enabled nil)            ; allow to show the error without X11 support

;highlight the other bracket
(show-paren-mode)    ; emacs builtin
;(require 'mic-paren) ; modification of show-paren-mode
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode) ; activate rainbow mode for all programming modes

;(Add-Hook 'prog-mode-hook 'flycheck-mode)
;(add-hook 'text-mode-hook 'flycheck-mode)

(require 'doc-mode)
(add-hook 'c-mode-common-hook doc-mode)

(setq c-basic-offset 4)

(global-linum-mode)
(hungry-delete-mode)

(setq linum-format "%4d\u2502")

(setq
   backup-by-copying t                           ; don't clobber symlinks
   backup-directory-alist
   '(("." . "~/local/autogen/emacs_backup"))     ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)                            ; use versioned backups

;(setq make-backup-files nil)                    ; WARNING! dissable all backup files

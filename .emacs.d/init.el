;(add-to-list 'load-path ')

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
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

(require 'ido)
(ido-mode t)
(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list '(try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line try-complete-lisp-symbol-partially try-complete-lisp-symbol))

;(require 'flymake)
;(global-set-key [f3] 'flymake-display-err-menu-for-current-line)
;(global-set-key [f4] 'flymake-goto-next-error)
;(add-hook 'find-file-hook 'flymake-find-file-hook) ; enable flymake for all supported filetypes
;(setq flymake-gui-warnings-enabled nil) ; allow to show the error without X11 support

(add-hook 'prog-mode-hook 'flycheck-mode)
(add-hook 'text-mode-hook 'flycheck-mode)

(setq c-basic-offset 4)

(global-linum-mode)
(hungry-delete-mode)

(setq linum-format "%4d\u2502")

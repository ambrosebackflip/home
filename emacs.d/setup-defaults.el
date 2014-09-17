;; no splash screen
(setq inhibit-splash-screen t)

;; no startup message
(setq inhibit-startup-message t)

;; make the initial scratch buffer empty
(setq initial-scratch-message "")

;; Enable delete selection
(delete-selection-mode t) 

;; no menu/tool/scroll bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; show column number
(column-number-mode t)

;; only require 'y' and 'n', not 'yes' and 'no'
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parentheses
(show-paren-mode t)

;; highlight the line that point is on
(global-hl-line-mode t)

;; reload files if they change
(global-auto-revert-mode 1)

;; tab settings
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(c-set-offset 'substatement-open 0)
(setq c-basic-offset 4)

;; line numbers
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d\u2502 ")

;; backups
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.emacs.backups/")))
(setq auto-save-list-file-prefix "~/.emacs.backups/")
(setq auto-save-file-name-transforms `((".*" "~/.emacs.backups/" t)))

;; navigate to a window backwards
(defun other-window-backwards ()
  "Moves the cursor to the other window, backwards."
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-c o") 'other-window-backwards)

(provide 'setup-defaults)

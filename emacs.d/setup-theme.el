(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(condition-case nil 
    (load-theme 'standard t)
  (wrong-number-of-arguments (load-theme 'standard)))

(provide 'setup-theme)


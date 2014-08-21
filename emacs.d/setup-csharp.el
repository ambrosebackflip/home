;; my specific csharp-mode settings
(defun my-csharp-style ()
  (require 'flymake)
  (flymake-mode)
  (local-set-key (kbd "{") 'c-electric-brace))

(add-hook 'csharp-mode-hook 'my-csharp-style)

(provide 'setup-csharp)

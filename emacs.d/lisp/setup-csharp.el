(require 'csharp-mode)

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(defun my-csharp-mode-fn ()
  (require 'flymake)
  (flymake-mode 1))

(add-hook 'csharp-mode-hook 'my-csharp-mode-fn t)

(provide 'setup-csharp)

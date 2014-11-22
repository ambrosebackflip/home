(require 'go-mode)

(defun my-go-mode-fn ()
  (setq-default indent-tabs-mode 1)
)

(add-hook 'go-mode-hook 'my-go-mode-fn t)
(add-hook 'before-save-hook #'gofmt-before-save)

(provide 'setup-go)

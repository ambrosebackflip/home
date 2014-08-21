;; (require 'multi-web-mode)

;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags 
;;   '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;     (js-mode  "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
;;     (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
;; (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
;; (multi-web-global-mode 1)

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

(provide 'setup-web)

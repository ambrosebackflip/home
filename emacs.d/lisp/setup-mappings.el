;; lua
(autoload 'lua-mode "lua-mode")
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; header files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; objc
(add-to-list 'auto-mode-alist '("\\.mm\\'" . objc-mode))

;; find other file
(setq cc-other-file-alist
      '(("\\.cc\\'"  (".h" ".hh"))
        ("\\.hh\\'"  (".cc" ".C"))

        ("\\.c\\'"   (".h"))
        ("\\.h\\'"   (".cc" ".c" ".C" ".CC" ".cxx" ".cpp" ".m" ".mm"))

        ("\\.m\\'"   (".h"))
        ("\\.mm\\'"  (".h"))

        ("\\.C\\'"   (".H"  ".hh" ".h"))
        ("\\.H\\'"   (".C"  ".CC"))

        ("\\.CC\\'"  (".HH" ".H"  ".hh" ".h"))
        ("\\.HH\\'"  (".CC"))

        ("\\.c\\+\\+\\'" (".h++" ".hh" ".h"))
        ("\\.h\\+\\+\\'" (".c++"))

        ("\\.cpp\\'" (".hpp" ".hh" ".h"))
        ("\\.hpp\\'" (".cpp"))

        ("\\.cxx\\'" (".hxx" ".hh" ".h"))
        ("\\.hxx\\'" (".cxx"))))

;; json
(add-to-list 'auto-mode-alist '("\\.json\\'" . json--mode))

(provide 'setup-mappings)

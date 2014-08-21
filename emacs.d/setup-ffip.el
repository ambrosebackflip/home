(require 'find-file)

;; find other file
(global-set-key (kbd "C-c n") (lambda () (interactive)
                                (ff-find-other-file t)))

(provide 'setup-ffip)

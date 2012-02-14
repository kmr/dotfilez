;; load path
(add-to-list 'load-path "~/.emacs.d/plugins")

;; load rc scripts
(setq list (directory-files "~/.emacs.d/rc" t "\\.el$"))
(while list
  (load-file (car list))
  (setq list (cdr list)))

;; goto home
(cd "~/")

(put 'dired-find-alternate-file 'disabled nil)

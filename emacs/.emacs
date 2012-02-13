;; load path
(add-to-list 'load-path "~/.emacs.d/plugins")

;; load rc scripts
(require 'cl)
(loop for rc in (directory-files "~/.emacs.d/rc" t ".el$") do
  (load-file rc))

;; goto home
(cd "~/")

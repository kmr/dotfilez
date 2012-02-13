;;
;; migemo
;;
(setq migemo-command "migemo")
(setq migemo-options '("-t" "emacs"))
(setq migemo-dictionary (expand-file-name "~/.emacs.d/share/migemo/migemo-dict"))
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setenv "RUBYLIB" "~/.emacs.d/lib/ruby/site_ruby/")

(require 'migemo)

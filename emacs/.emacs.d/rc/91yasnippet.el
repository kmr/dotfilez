;; yasnippet
(require 'yasnippet)
(require 'anything-c-yasnippet)
(setq anything-c-yas-space-match-any-greedy t)
;;(global-set-key (kbd "C-c y") 'anything-c-yas-complete)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")
;;(add-to-list 'yas/extra-mode-hooks 'ruby-mode-hook)
;;(add-to-list 'yas/extra-mode-hooks 'cperl-mode-hook)

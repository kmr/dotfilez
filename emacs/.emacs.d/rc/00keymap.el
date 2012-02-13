;;; command key and control key conversion
(cond ((string-equal "darwin" system-type)
  (cond (window-system
    (setq mac-command-modifier 'control)))))
;;(setq mac-control-modifier 'meta)
;; replace mark command
(global-set-key "\M- " 'set-mark-command)

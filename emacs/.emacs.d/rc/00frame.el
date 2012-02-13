;; frame setup
(setq default-frame-alist (append (list '(width .  80)
                                              '(height . 45))
                                         default-frame-alist))

(cond (window-system
       (set-scroll-bar-mode 'right))) 
;;(set-scroll-bar-mode nil)
(line-number-mode t)
(column-number-mode t)
(setq line-number-mode t)
;; scroll setting
(setq scroll-conservatively 1)

(line-number-mode t)
(column-number-mode t)


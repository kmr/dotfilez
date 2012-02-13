;; anything-config
(require 'anything-config)
(require 'anything-grep)
;;(require 'anything-c-yasnippet)
(setq anything-idle-delay 0.3)

(setq anything-sources (list
                             anything-c-source-buffers
                             anything-c-source-file-name-history
;;                             anything-c-source-recentf
                             anything-c-source-files-in-current-dir
;;                             anything-c-source-man-pages
;;                             anything-c-source-complex-command-history
                             anything-c-source-emacs-commands
;;                             anything-c-source-emacs-functions
;;                             anything-c-source-emacs-functions-with-abbrevs
;;                             anything-c-source-bookmarks
                             anything-c-source-locate
                             anything-c-source-mac-spotlight
                             anything-c-source-yasnippet
;;                             anything-c-source-google-suggest
                             ))

(define-key global-map (kbd "C-l") 'anything)
(define-key anything-map [\C-p] 'anything-previous-line)
(define-key anything-map [\C-n] 'anything-next-line)
(define-key anything-map [\C-v] 'anything-next-page)
(define-key anything-map [\M-v] 'anything-previous-page)

(defun anything-persistent-highlight-point (start &optional end buf face rec)
  (goto-char start)
  (when (overlayp anything-c-persistent-highlight-overlay)
    (move-overlay anything-c-persistent-highlight-overlay
                  start
                  (or end (line-end-position))
                  buf))
  (overlay-put anything-c-persistent-highlight-overlay 'face (or face 'highlight))
  (when rec
    (recenter)))

;;(add-hook 'anything-cleanup-hook
;;          (lambda ()
;;            (when (overlayp anything-c-persistent-highlight-overlay)
;;              (delete-overlay anything-c-persistent-highlight-overlay))))

(setq anything-grep-goto-hook
      (lambda ()
        (when anything-in-persistent-action
          (anything-persistent-highlight-point (point-at-bol) (point-at-eol)))))

(setq anything-grep-alist
  '(("buffers" ("egrep -Hin %s $buffers" "/"))
    ("memo" ("egrep -Hin %s *.hown" "~/memo/"))
    ("miolog" ("egrep -Hin %s *.rst" "~/miolog/"))
    ))

;; don't load default initial script.
(setq inhibit-default-init t)

(setq netinstall-pkg-dir (expand-file-name (concat data-directory 
					     "../packages")))
(unless (file-exists-p netinstall-pkg-dir)
  (setq netinstall-pkg-dir (expand-file-name (concat data-directory 
					       "../../packages")))
  (unless (file-exists-p netinstall-pkg-dir)
    (setq netinstall-pkg-dir nil)))
    
;; add Netinstalled info path ($MEADOW/info)
(defadvice info-initialize
  (after info-initialize-after activate)
  "add directory `$MEADOW/info' to Info-directory-list." 
  (let ((dir (expand-file-name "info" netinstall-pkg-dir)))
    (unless (member dir Info-directory-list)
      (setq Info-directory-list (append (list dir) Info-directory-list)))))

;; source-directory
(unless (file-exists-p source-directory)
  (setq source-directory (expand-file-name "../src" netinstall-pkg-dir)))

;; add svn revision
(when (featurep 'meadow)
  (defadvice emacs-version (after emacs-version-after activate)
    "Add svn revison to emacs-version(f)"
    (let ((info (expand-file-name "../.svn.info" data-directory))
	  str)
      (when (file-exists-p info)
	(save-excursion
	  (set-buffer (find-file-noselect info))
	  (setq str (buffer-substring-no-properties 
		     (point-min) (- (point-max) 1)))
	  (kill-buffer nil))
	(setq ad-return-value (concat ad-return-value "\n" str))))))

;; PATH
(setq exec-path (cons "/opt/local/bin" exec-path))

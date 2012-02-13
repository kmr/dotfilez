;; Osaka font
;;(if window-system (progn
;;		    (create-fontset-from-fontset-spec
;;		     (concat
;;		      "-*-fixed-medium-r-normal-*-14-*-*-*-*-*-fontset-osaka16,"
;;		      "japanese-jisx0208:-apple-osaka-medium-r-normal--16-160-75-75-m-160-jisx0208.1983-sjis,"
;;		      "ascii:-apple-monaco-medium-r-normal-*-14-*-*-*-*-*-mac-roman"))
;;		    (set-default-font "fontset-osaka16")
;;		    (setq default-frame-alist (append '((font . "fontset-osaka16"))))
;;		    ))

(setq darwin-p  (eq system-type 'darwin)
      ns-p      (eq window-system 'ns)
      carbon-p  (eq window-system 'mac)
      linux-p   (eq system-type 'gnu/linux)
      cygwin-p  (eq system-type 'cygwin)
      nt-p      (eq system-type 'windows-nt)
      meadow-p  (featurep 'meadow)
      windows-p (or cygwin-p nt-p meadow-p))

(when ns-p
  (progn
    (let* ((fontset-name "myfonts")
      (size 14)
      (asciifont "Ricty")
      (jpfont "Ricty")
      (font (format "%s-%d:weight=normal:slant=normal" asciifont size))
      (fontspec (font-spec :family asciifont))
      (jp-fontspec (font-spec :family jpfont)) 
      (fsn (create-fontset-from-ascii-font font nil fontset-name)))
	  (set-fontset-font fsn 'japanese-jisx0213.2004-1 jp-fontspec)
	  (set-fontset-font fsn 'japanese-jisx0213-2 jp-fontspec)
	  (set-fontset-font fsn 'katakana-jisx0201 jp-fontspec)
	  (set-fontset-font fsn '(#x0080 . #x024F) fontspec)
	  (set-fontset-font fsn '(#x0370 . #x03FF) fontspec)
	)
;;    (dolist (elt '(("^-apple-hiragino.*" . 1.2)
;;      (".*osaka-bold.*" . 1.2)
;;      (".*osaka-medium.*" . 1.2)
;;      (".*courier-bold-.*-mac-roman" . 1.0)
;;      (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;;      (".*monaco-bold-.*-mac-roman" . 0.9)))
;;    (add-to-list 'face-font-rescale-alist elt))
  ))

(add-to-list 'default-frame-alist '(font . "fontset-myfonts"))
(set-face-font 'default "fontset-myfonts")

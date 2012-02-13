(message "90im.el: add ~/.emacs.d/plugins/skk to the load path")
(add-to-list 'load-path "~/.emacs.d/plugins/skk")
(require 'skk-setup)
(require 'skk-autoloads)

;; setup japanese input method
(set-language-environment 'Japanese)
(setq default-input-method "japanese-skk")

;; setup dictionaries
(setq skk-search-prog-list
  '((skk-search-jisyo-file "~/.emacs.d/share/skk/SKK-JISYO.L" 10000 t)
    (skk-search-jisyo-file "~/.emacs.d/share/skk/SKK-JISYO.geo" 10000 t)
    (skk-search-jisyo-file "~/.emacs.d/share/skk/SKK-JISYO.jinmei" 10000 t)
    (skk-search-jisyo-file "~/.emacs.d/share/skk/SKK-JISYO.propernoun" 10000 t)))

;; ime toggle keys
(global-set-key "\C-x\C-j" 'skk-mode)
(global-set-key "\C-\\" 'skk-mode)

;; MacOS only: don't tell the system the control command.
(if (eq system-type 'darwin)
  (progn
    (setq mac-pass-control-to-system nil)
    (setq mac-pass-command-to-system nil)
    (setq mac-pass-option-to-system nil)))

;; setup coding systems as utf-8 environment
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)  
(setq default-file-name-coding-system 'utf-8)  
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))  
(setq default-buffer-file-coding-system 'utf-8)

;; Emacs 22 only: enable utf cjk mode
(if (= emacs-major-version 22)
  (progn
    (utf-translate-cjk-mode 1)))

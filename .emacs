(add-to-list 'load-path "~/.elisp")

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
;; http://snarfed.org/gnu_emacs_backup_files
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; package.el configuration
(require 'package)
(package-initialize)

;; add the goodies
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ("gnu" . "http://elpa.gnu.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))

;; DEFAULTS
;; width and height
(set-frame-height (selected-frame) 50)
(set-frame-width (selected-frame) 135)

;; theme
(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(if
    (equal 0 (string-match "^24" emacs-version))
    ;; it's emacs24, so use built-in theme
    (require 'solarized-dark-theme)
  ;; it's NOT emacs24, so use color-theme
  (progn
    (require 'color-theme)
    (color-theme-initialize)
    (require 'color-theme-solarized)
    (color-theme-solarized-dark)))

;; font size
(set-face-attribute 'default nil :height 140)

;; speedbar cong if I ever want it
;;(require 'speedbar-conf)
(put 'erase-buffer 'disabled nil)

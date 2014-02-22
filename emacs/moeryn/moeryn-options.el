;; Line number
(global-linum-mode t)

;; Remove menu bar
(menu-bar-mode -1)
;; Remove scroll bar

(toggle-scroll-bar -1)

;; Remove tool bar
(tool-bar-mode -1)

;; Matching parentheses
(show-paren-mode)

;; Makes the region visible
(transient-mark-mode 1) ;

;; Makes the line number show up
(line-number-mode 1)

;; Makes the column number show up
(column-number-mode 1)

;; Set title to be filename or buffer name
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; No C-z when in window system
(when window-system
  (global-unset-key "\C-z")) ; iconify-or-deiconify-frame (C-x C-z)

;; Dont show the GNU splash screen
(setq inhibit-startup-message t)

;; Open unidentified files in text mode
(setq default-major-mode 'text-mode)

;; Automagically read compressed files
(auto-compression-mode 1)

;; Spell program
(setq-default ispell-program-name "aspell")

;; Show parent parent
(show-paren-mode 1)

;; Activate column-number-mode
(column-number-mode t)

;; Always end file with a new line
(setq require-final-newline 't)

;; Ask for confirmation before killing emacs
(setq confirm-kill-emacs 'yes-or-no-p)

(provide 'moeryn-options)

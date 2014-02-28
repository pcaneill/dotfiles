;;; moeryn-outline --- Foldings
;;; Commentary:
;;;           function from http://www.emacswiki.org/emacs/OutlineMinorMode


;;; Code:

(defun set-vim-foldmarker (fmr)
"Set Vim-type foldmarkers for the current buffer.

    FMR : foldmaker"
      (interactive "sSet local Vim foldmarker: ")
      (if (equal fmr "")
          (message "Abort")
        (setq fmr (regexp-quote fmr))
        (set (make-local-variable 'outline-regexp)
             (concat ".*" fmr "\\([0-9]*\\)"))
        (set (make-local-variable 'outline-level)
             `(lambda ()
                (save-excursion
                  (save-match-data
                    (re-search-forward ,(concat fmr "\\([0-9]*\\)") nil t)
                    (string-to-number (match-string 1))))))))


(provide 'moeryn-outline)
;;; moeryn-outline.el ends here

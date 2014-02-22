;;; Keyboards shortcut

;; Buffers
(global-set-key  (kbd "C-c <C-right>") 'moeryn-rapid-enlarge-function)
(global-set-key  (kbd "C-c <C-left>")  'moeryn-rapid-shrink-function)

(global-set-key  (kbd "C-G") 'goto-line)

(global-set-key [(f4)] (lambda ()
                         (interactive)
                         (git-grep-it (format "%s" (current-word)))))

;; Highlight
(global-set-key [(f3)]       'highlight-symbol-at-point)
(global-set-key [f2]         'highlight-symbol-next)
(global-set-key [(shift f2)] 'highlight-symbol-prev)
(global-set-key [(meta f2)]  'highlight-symbol-query-replace)

;; Tags
(global-set-key [(f1)] 'etags-select-find-tag-at-point)
(global-set-key [(control f1)] 'etags-select-find-tag)

;; Folds
(global-set-key (kbd "C-<left>")  'hide-entry)
(global-set-key (kbd "C-<right>") 'show-entry)
(global-set-key (kbd "C-<up>")    'outline-previous-visible-heading)
(global-set-key (kbd "C-<down>")  'outline-next-visible-heading)

;; Flymake
(global-set-key [(f12)] 'buffer-compile)
(global-set-key [(f10)] 'flymake-show-next-error)

;; git-rebase-mode
(global-set-key [(meta u)] 'git-rebase-move-line-up)
(global-set-key [(meta d)] 'git-rebase-move-line-down)
(global-set-key [(meta k)] 'git-rebase-kill-line)
(global-set-key [(meta a)] 'git-rebase-abort)

(provide 'moeryn-shortcuts)

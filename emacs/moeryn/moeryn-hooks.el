;;; moeryn-hooks --- Hooks
;;; Commentary:

(require 'moeryn-outline)

;;; Code:

(defun moeryn-outline()
  (interactive)
  (outline-minor-mode t)
  (set-vim-foldmarker "{{{")
  (hide-body)
)

(add-hook 'c-mode-hook 'moeryn-outline)
(add-hook 'cpp-mode-hook 'moeryn-outline)
(add-hook 'python-mode-hook 'moeryn-outline)

;;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'moeryn-hooks)
;;; moeryn-hooks.el ends here

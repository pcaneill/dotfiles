;;; Moeryn < py.caneill@gmail.com >
;;; Default emacs display screen-gamma
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; moeryn-three-display
(defun moeryn-three-display ()
  """Reset window and then open 3 widows of the same buffer, the window
     in the middle will be larger"""
  (delete-other-windows)
  (split-window-horizontally)
  (enlarge-window-horizontally 40)
  (split-window-horizontally)
  (enlarge-window-horizontally -6)
  )

;;; moeryn-rapid-enlarge-function
(defun moeryn-rapid-enlarge-function ()
  """Elarge the current window"""
  (interactive)
  (enlarge-window-horizontally 7)
  )

;;; moeryn-rapid-shrink-function
(defun moeryn-rapid-shrink-function ()
  """Shrink the current window"""
  (interactive)
  (enlarge-window-horizontally -7)
  )

(provide 'moeryn-display)

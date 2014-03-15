;;
;; Couple of smart copy and paste on s-exprs
;;

;;
;; This duplicate the next sexpr with C-S-d
;;
(defun paredit-duplicate-after-point
  ()
  "Duplicates the content of next sexpr that is after the point."
  (interactive)
  ;; skips to the next sexp
  (while (looking-at " ")
    (forward-char))
  (set-mark-command nil)
  ;; while we find sexps we move forward on the line
  (while (and (<= (point) (car (bounds-of-thing-at-point 'sexp)))
              (not (= (point) (line-end-position))))
    (forward-sexp)
    (while (looking-at " ")
      (forward-char)))
  (kill-ring-save (mark) (point))
  ;; go to the next line and copy the sexprs we encountered
  (paredit-newline)
  (set-mark-command nil)
  (yank)
  (exchange-point-and-mark))


(eval-after-load "paredit"
  '(progn (define-key paredit-mode-map (kbd "C-S-d") 'paredit-duplicate-after-point)))



;;
;; This copy in the kill ring the next sexpr with C-S-c
;;
(defun paredit-copy-after-point
  ()
  "Copy the next sexps that is after the point."
  (interactive)
  ;; skips to the next sexp
  (while (looking-at " ")
    (forward-char))
  (set-mark-command nil)
  ;; while we find sexps we move forward on the line
  (while (and (<= (point) (car (bounds-of-thing-at-point 'sexp)))
              (not (= (point) (line-end-position))))
    (forward-sexp)
    (while (looking-at " ")
      (forward-char)))
  (kill-ring-save (mark) (point))
  (exchange-point-and-mark))

(eval-after-load "paredit"
  '(progn (define-key paredit-mode-map (kbd "C-S-c") 'paredit-copy-after-point)))


;;
;; This copy in the kill ring the next sexpr and kill it with C-S-k
;;
(defun paredit-kill-after-point
  ()
  "Kill the sexpr that is after the point."
  (interactive)
  ;; skips to the next sexp
  (while (looking-at " ")
    (forward-char))
  (set-mark-command nil)
  ;; while we find sexps we move forward on the line
  (while (and (<= (point) (car (bounds-of-thing-at-point 'sexp)))
              (not (= (point) (line-end-position))))
    (forward-sexp)
    (while (looking-at " ")
      (forward-char)))
  (kill-ring-save (mark) (point))
  (kill-region (mark) (point))
  (exchange-point-and-mark))

(eval-after-load "paredit"
  '(progn (define-key paredit-mode-map (kbd "C-S-k") 'paredit-kill-after-point)))

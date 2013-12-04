;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)


;; Add more natural <up> and <down> key bindings for shell mode
(defun my-shell-mode-keys ()
  "Modify keymaps used by repl."
  (local-set-key (kbd "<up>")   'comint-previous-input)
  (local-set-key (kbd "<down>") 'comint-next-input)
  )

(add-hook 'shell-mode-hook 'my-shell-mode-keys)


;; Add more natural <up> and <down> key bindings for nrepl mode
(defun my-nrepl-mode-keys ()
  "Modify keymaps used by repl."
  (local-set-key (kbd "<up>")   'nrepl-previous-input)
  (local-set-key (kbd "<down>") 'nrepl-next-input)
  )

(add-hook 'nrepl-mode-hook 'my-nrepl-mode-keys)

;; use Shift+arrow_keys to move cursor around split panes
;;(windmove-default-keybindings)
;; same but with [Cmd]+[alt]+[->]
(global-set-key [M-s-left]  'windmove-left)
(global-set-key [M-s-right] 'windmove-right)
(global-set-key [M-s-up]    'windmove-up)
(global-set-key [M-s-down]  'windmove-down)
(setq windmove-wrap-around t )

;; text increase/decrease with [cmd] + mouse wheel scroll
(global-set-key [s-triple-wheel-up] 'text-scale-increase)
(global-set-key [s-triple-wheel-down] 'text-scale-decrease)

;; reload buffers from disk when the file changes
(global-auto-revert-mode t)

;; hightlight modeline of active buffer
(set-face-foreground 'mode-line "black")
(set-face-background 'mode-line "green4")

;; inactive modeline should be of a slightly different color
(set-face-background 'modeline-inactive "grey20")

;; increase default font size
(live-set-default-font "Source Code Pro 14")

;; disable join/part notifications in erc
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; Disable YAS autocompletion for Terminal Mode
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))

;; Disable tabs and uses sapces intead
(setq-default indent-tabs-mode nil)

;; Enable Dired to copy between buffers in a split-screen
(setq dired-dwim-target t)

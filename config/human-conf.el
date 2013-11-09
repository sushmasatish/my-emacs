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

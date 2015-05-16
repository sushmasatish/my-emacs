;;
;; Loading required libraries and prodigy

(live-add-pack-lib "prodigy/dash-2.10.0")
(live-add-pack-lib "prodigy/f-0.17.2")
(live-add-pack-lib "prodigy/s-1.9.0")
(live-add-pack-lib "prodigy/prodigy-0.6.0")

(require 'prodigy)

;;
;; if a .prodigy exists load it
;;
(if (file-exists-p "~/.prodigy.el")
    (live-load-config-file "~/.prodigy.el"))

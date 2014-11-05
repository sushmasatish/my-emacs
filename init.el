;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Solarized pack init file
;;
(live-load-config-file "solarized-conf.el")


;; Load bindings config
(live-load-config-file "bindings.el")

;; Custom settings
(live-load-config-file "human-conf.el")

;; Custom settings
(live-load-config-file "paredit.el")

;; Neotree
(live-load-config-file "neotree.el")

;; automatically open org-file on startup
(find-file "~/.TODO.org")

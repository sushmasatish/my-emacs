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

;; mitical restclient
(live-load-config-file "restclient.el")

;; automatically open org-file on startup
(setq default-message
      "
* org-mode is a great tool, use it for your own notes
** org-mode key-bindings http://orgmode.org/orgcard.txt
** Documentation: http://orgmode.org/
** Video tutorials:
  - https://www.youtube.com/watch?v=6W82EdwQhxU
  - https://www.youtube.com/watch?v=fgizHHd7nOo
  - https://www.youtube.com/watch?v=bzZ09dAbLEE
")

;; if not exists create one
(if (not (file-exists-p "~/.TODO.org"))
    (append-to-file default-message nil "~/.TODO.org"))
;; open all existing ones
(mapcar 'find-file  (directory-files "~/" t "^.TODO.*.org"))


;; load custom yas snippets
(add-to-list 'yas-snippet-dirs
             (or (concat (file-name-directory load-file-name) "yas")
                 "~/.live-packs/my-emacs/yas"))
(yas-reload-all)

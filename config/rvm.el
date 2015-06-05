;;
;; Loading rvm

(live-add-pack-lib "rvm")


(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

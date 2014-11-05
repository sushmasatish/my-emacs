(live-add-pack-lib "neotree")
(require 'neotree)
(global-set-key (kbd "C-x t") 'neotree-toggle)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
        (file-name (buffer-file-name)))
    (if project-dir
        (progn
          (neotree-dir project-dir)
          (neotree-find file-name))
      (message "Could not find git project root."))))

(global-set-key (kbd "C-x M-t") 'neotree-project-dir)

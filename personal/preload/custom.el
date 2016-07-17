(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))


; (setq ranger-override-dired t)

;; If you want the keybinding to override all minor modes that may also bind
;; the same key, use the `bind-key*' form:
;;
;;   (bind-key* "<C-return>" 'other-window)

;; To bind multiple keys in a `bind-key*' way (to be sure that your bindings
;; will not be overridden by other modes), you may use `bind-keys*' macro:
;;
;;    (bind-keys*
;;     ("C-o" . other-window)
;;     ("C-M-n" . forward-page)
;;     ("C-M-p" . backward-page))
(bind-keys*

 ("s-s" . save-buffer)
 ("s-f" . isearch-forward)
 ("s-r" . replace-strin)
 ("s-F" . projectile-ag)
                                        ;("s-F" . projectile-replace)
 ("s-R" . projectile-replace)
 ("s-." . hippie-expand)
 ("s-O" . projectile-find-file)
 ("C-R" . crux-rename-file-and-buffer)
                                        ; ("C-N" . create-file-buffer)
 ("s-g" . avy-goto-char)
 ("C-c C-r" . vc-revert-buffer)


 ("s-w" . er/expand-region)
 ("s-d" . crux-kill-whole-line)
 ("s-y" . crux-duplicate-current-line-or-region)
 ("M-L" . indent-buffer)
 ("s-/" . comment-or-uncomment-region)
 ("C-c C-b" . goto-last-change)
 ("C-c b" . switch-to-prev-buffer)
 )

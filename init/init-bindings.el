;; keyboard bindings

(global-set-key (kbd "<F5>") 'compile)
(global-set-key (kbd "<f5>") 'recompile)

(global-set-key (kbd "M-q") 'fill-region)

(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "M-SPC") 'hippie-expand)
(global-set-key (kbd "M-/") 'hippie-expand)

(define-key global-map (kbd "C-+") 'hs-show-block)
(define-key global-map (kbd "C--") 'hs-hide-block)

(define-key global-map (kbd "C-M-+") 'hs-show-all)
(define-key global-map (kbd "C-M--") 'hs-hide-all)

;; Searching
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; File / buffer management
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Window switching
(windmove-default-keybindings)
(global-set-key (kbd "C-x O")
		(lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o")
		(lambda () (interactive) (other-window 2))) ;; forward two

(global-set-key (kbd "C-h a") 'apropos)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; Expand region
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)

;; Multiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(provide 'init-bindings)

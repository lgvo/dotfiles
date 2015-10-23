(require-packages 'evil
                  'evil-surround
                  'evil-numbers
                  'evil-leader
		  'evil-tabs
		  'relative-line-numbers
		  'powerline-evil)

(require 'evil)

(global-evil-leader-mode t)

(evil-mode t)

(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
(add-hook 'prog-mode-hook 'line-number-mode t)
(add-hook 'prog-mode-hook 'column-number-mode t)

(require 'powerline)
(powerline-evil-vim-color-theme)
(display-time-mode t)

(define-key evil-normal-state-map (kbd "C-k") 'windmove-up)
(define-key evil-normal-state-map (kbd "C-j") 'windmove-down)
(define-key evil-normal-state-map (kbd "C-l") 'windmove-right)
(define-key evil-normal-state-map (kbd "C-h") 'windmove-left)

(define-key evil-motion-state-map ";" 'evil-ex)

(evil-leader/set-leader ",")

(setq evil-emacs-state-cursor '("red" box))

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(define-key evil-insert-state-map (kbd "C-,") 'emmet-expand-line)

(evil-leader/set-key "ws" (lambda () (interactive) 
                            (split-window-horizontally)
                            (windmove-right)))

(evil-leader/set-key "vs" (lambda () (interactive) 
                            (split-window-vertically)
                            (windmove-down)))

(provide 'evil-cfg)

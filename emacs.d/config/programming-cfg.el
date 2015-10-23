(require-packages 'projectile
		          'helm
		          'helm-projectile
		          'flycheck
		          'emmet-mode
		          'auto-complete
                  'paredit)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(evil-leader/set-key "pw" 'helm-projectile-switch-project)
(evil-leader/set-key "pp" 'helm-projectile)
(evil-leader/set-key "pf" 'helm-projectile-find-file)
(evil-leader/set-key "pd" 'helm-projectile-find-dir)
(evil-leader/set-key "pb" 'helm-projectile-switch-to-buffer)
(evil-leader/set-key "ps" 'helm-projectile-switch-to-shell)
(evil-leader/set-key "pg" 'helm-projectile-grep)

(setq projectile-switch-project-action 'helm-projectile)

(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'eemet-mode)

(ac-config-default)

(require 'flycheck)
(flycheck-mode t)

(autoload 'enable-paredit-mode "paredit" "Turn paredit mode" t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(defun custom-paredit-nonlisp()
  "Turn on predit mode for non-lisp languages"
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lamda (endp delimiter) nil)))
  (paredit-mode 1))

(provide 'programming-cfg)

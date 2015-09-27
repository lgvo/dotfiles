(require-packages 'tern
		  'tern-auto-complete
		  'js2-mode
		  'js2-refactor
		  'web-beautify)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js-mode-hook 'js2-refactor-mode)

(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

(evil-leader/set-key "rr" 'tern-rename-variable)
(evil-leader/set-key "," 'tern-find-definition)
(evil-leader/set-key "." 'tern-pop-find-definition)

(evil-leader/set-key "ef" 'js2r-extract-function)
(evil-leader/set-key "em" 'js2r-extract-method)
(evil-leader/set-key "ev" 'js2r-extract-var)


(evil-leader/set-key "ip" 'js2r-introduce-parameter)

(evil-leader/set-key "eo" 'js2r-expand-object)
(evil-leader/set-key "co" 'js2r-contract-object)
(evil-leader/set-key "ea" 'js2r-expand-array)
(evil-leader/set-key "ca" 'js2r-contract-array)
(evil-leader/set-key "eu" 'js2r-expand-function)
(evil-leader/set-key "cu" 'js2r-contract-function)

(evil-leader/set-key "lt" 'js2r-log-this)
(evil-leader/set-key "dt" 'js2r-debug-this)


(provide 'javascript-cfg)

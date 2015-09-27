(require-packages 'flycheck
		          'emmet-mode
		          'auto-complete
                  'paredit)

(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'eemet-mode)

(ac-config-default)

(provide 'programming-cfg)

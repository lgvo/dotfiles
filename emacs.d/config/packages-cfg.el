(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)

(defun require-packages (&rest packages)
  (mapcar
    (lambda (package)
      (if (package-installed-p package)
        nil
        (if (y-or-n-p (format "Package %s is missing, Install it? " package))
          (package-install package)
          package)))
    packages))

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(package-initialize)

(require-packages 'projectile
                  'magit
                  'color-theme-sanityinc-tomorrow)

(provide 'packages-cfg)


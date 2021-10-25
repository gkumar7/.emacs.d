(require 'package)

;; Bug in Emacs 26.2 for Mac
;; See https://emacs.stackexchange.com/questions/51721/failed-to-download-gnu-archive
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Install required packages
(setq package-list '(evil undo-tree key-chord typescript-mode tide company solarized-theme projectile lsp-java go-mode))

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-package)

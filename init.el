(when (version< emacs-version "26.1")
  (error "This requires Emacs 26.1 and above!"))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-package)
(require 'init-basic)
(require 'init-navigation)
(require 'init-typescript)
(require 'init-java)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (go-mode evil undo-tree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

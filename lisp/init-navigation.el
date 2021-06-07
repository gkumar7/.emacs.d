(require 'evil)
(evil-mode 1)

(projectile-mode 1)

;; Exit insert mode by pressing jj
(key-chord-mode 1)

(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-define projectile-mode-map "SS" 'projectile-find-file)

(provide 'init-navigation)

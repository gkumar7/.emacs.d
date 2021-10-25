(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(defun on-save 
  (tide-format)
  (tide-organize-imports))

(add-hook 'before-save-hook #'on-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(provide 'init-typescript)

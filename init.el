;; init.el

;; F# Mode
(use-package fsharp-mode
  :ensure t)

;; OCaml Mode
(use-package tuareg
  :ensure t)

;; TypeScript Mode
(use-package typescript-mode
  :ensure t)

;; Key bindings for compilation
(global-set-key (kbd "C-c r") 'compile)

;; Function to run TypeScript
(defun run-typescript ()
  (interactive)
  (let ((file (buffer-file-name)))
    (when file
      (compile (format "tsc %s && node %s.js" file (file-name-sans-extension (file-name-nondirectory file)))))))

(global-set-key (kbd "C-c C-r") 'run-typescript)

(require 'flymake)

(defun flymake-jslint-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-intemp))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "/usr/bin/jshint" (list local-file))))

(setq flymake-allowed-file-name-masks
      (cons '(".+\\.js$"
              flymake-jslint-init
              flymake-simple-cleanup
              flymake-get-real-file-name)
            flymake-allowed-file-name-masks))

(setq flymake-err-line-patterns
      (cons '(".*: line \\([[:digit:]]+\\), col \\([[:digit:]]+\\), \\(.*\\)$"
              nil 1 2 3)
            flymake-err-line-patterns))

;; (setq flymake-err-line-patterns
;;       (cons '("^Lint at line \\([[:digit:]]+\\) character \\([[:digit:]]+\\): \\(.+\\)$"
;;               nil 1 2 3)
;;             flymake-err-line-patterns))

(provide 'flymake-jslint)

;; (require 'flymake)

;; (defun flymake-jslint-init ()
;;   (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                      'flymake-create-temp-inplace))
;;          (local-file (file-relative-name
;;                       temp-file
;;                       (file-name-directory buffer-file-name))))
;;     (list "/usr/bin/jshint" (list "--show-non-errors" local-file))))

;; (setq flymake-allowed-file-name-masks
;;       (cons '(".+\\.js$"
;;               flymake-jslint-init
;;               flymake-simple-cleanup
;;               flymake-get-real-file-name)
;;             flymake-allowed-file-name-masks))

;; (setq flymake-err-line-patterns
;;       (cons '("^Lint at line \\([[:digit:]]+\\) character \\([[:digit:]]+\\): \\(.+\\)$"
;;               nil 1 2 3)
;;             flymake-err-line-patterns))

;; (provide 'flymake-jslint)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; defaults.el - stuff I want no matter what I'm doing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; disable scroll bar, tool bar and menu bar to maximize real estate
;; for editing.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-default-font "Source Code Pro-12")

;; automatic integration with clipboard
(setq x-select-enable-clipboard t)

;; omit uninteresting things
(setq-default dired-omit-files-p t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; turn off startup screen it's for weenies
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-screen t)

;;show column number in status
(setq column-number-mode t)

;;paren matching minor mode
(show-paren-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;turn off annoying beep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq visible-bell nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for handling control sequences in terminal changing to colors
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;default terminal colors
(setq term-default-bg-color "#000000")
(setq term-default-fg-color "#dddd00")


;; like ibuffer
(defalias 'list-buffers 'ibuffer)

;; tell programs the term is perfectly fine
(setenv "TERM" "xterm")

;; delete selection when typing like you would expect
(delete-selection-mode 1)

;; packages
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;flymake faces
(custom-set-faces
 '(flymake-errline ((((class color)) (:underline "red" :weight bold))))
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(flymake-infoline ((((class color)) (:underline "dark gray")))))


;; smex
(smex-initialize)


;; tramp
(setq tramp-default-method "ssh")

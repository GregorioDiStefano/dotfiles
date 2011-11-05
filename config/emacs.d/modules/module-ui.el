;; need some utility functions
(require 'module-util)

;; disable startup screen
(setq inhibit-startup-screen t) 

;; set font
(set-default-font "ProggyCleanTT-12")


;; syntax coloring
(require 'font-lock)
(global-font-lock-mode t)
(setq font-lock-verbose nil)

;; highlight query
(setq query-replace-highlight t)

;; highling incremental search
(setq search-highlight t)

;; search for open-paren till point-min
(setq blink-matching-paren-distance nil)

;; show selected region
(setq transient-mark-mode t)

;; highlight current line
(global-hl-line-mode 1)

 ;show line numbers
(global-linum-mode t)

;; show line number in status bar
(line-number-mode t)

;; show column number in status bar
(column-number-mode t)

;; show file size
(size-indication-mode t)

;; delete region by typing
(delete-selection-mode t)

;; highlight matching parenthesis
(setq show-paren-delay 0)
(setq show-paren-syle 'mixed)
(show-paren-mode t)

;; setup scrolling
(setq
 scroll-margin 0                        ;; do smooth scrolling, ...
 scroll-conservatively 100000           ;; ... the defaults ...
 scroll-up-aggressively 0               ;; ... are very ...
 scroll-down-aggressively 0             ;; ... annoying
 scroll-preserve-screen-position t)     ;; preserve screen pos with C-v/M-v 

;; move mouse if cursor is too close
(mouse-avoidance-mode 'jump)

;; scroll bar on the right
(set-scroll-bar-mode nil)

;; color themes
;; use naquadah if running under X
;; for terminal prefer color-theme-tty-dark
(setq terminal-color-theme 'color-theme-tty-dark)

(if (bozo-in-terminal-p)
    (bozo-set-color-theme terminal-color-theme)
  (require 'naquadah-theme))


(provide 'module-ui)
;; module-ui.el ends here
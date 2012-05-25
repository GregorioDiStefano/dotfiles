;; usability enhancements, tabs, ido, uniquify etc..

;; indentation
(setq-default indent-tabs-mode nil) ;use spaces instead of tabs
(setq tab-width 4)
(setq stardard-indent 4)

;recentf - recent files
(require 'recentf)
(setq 
 ;; save list to ~/.emacs.d/cache/recentf
 recentf-save-file (expand-file-name"recentf" local-cache-dir)
 recentf-max-saved-items 100
 recentf-max-menu-items 15)
;; enable
(recentf-mode t)

;; uniquify: unique buffer names
(require 'uniquify)
(setq 
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":"
 ;; regenerate buffer names after killing a buffer
 uniquify-after-kill-buffer-p t 
 ;; ignore buffers with *, *ielm*, *cscope* etc.
 uniquify-ignore-buffers-re "^\\*")

;IDO
(require 'ido)
;; enable for buffers and files
(ido-mode 'both)
(setq 
 ;; save state to ~/.emacs.d/cache/ido.last
 ido-save-directory-list-file (expand-file-name"ido.last" local-cache-dir)
 ;; ignore these guys
 ido-ignore-buffers 
 '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace"
   "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")
 ido-work-directory-list '("~/" "~/Desktop" "~/Documents" "~/code")
 ido-case-fold  t                 ; be case-insensitive
 ido-enable-last-directory-history t ; remember last used dirs
 ido-max-work-directory-list 30   ; should be enough
 ido-max-work-file-list      50   ; remember many
 ido-use-filename-at-point nil    ; don't use filename at point (annoying)
 ido-use-url-at-point nil         ; don't use url at point (annoying)
 ido-enable-flex-matching nil     ; don't try to be too smart
 ido-max-prospects 8              ; don't spam my minibuffer
 ido-confirm-unique-completion t  ; wait for RET, even with unique completion
 ido-default-buffer-method 'select-window) ; show buffer in frame that I want it to be
; resize minibuf with ido completions to at most 1 line
(add-hook 'ido-minibuffer-setup-hook 
          (function
           (lambda ()
             (make-local-variable 'resize-minibuffer-window-max-height)
             (setq resize-minibuffer-window-max-height 1))))

;; jumplist
(require 'jumplist)

;speedbar in frame
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t)

;; autocompletions
(require 'module-autocompletion)

;; terminal
(require 'multi-term)

;; org mode
(setq org-log-done 'time
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-start-on-weekday 1
      org-agenda-show-all-dates t)
(defun bozo-org-mode-hook()
  (progn (auto-fill-mode 1)))
(add-hook 'org-mode-hook 'bozo-org-mode-hook)
(org-remember-insinuate)
;; default task cycling
;; if other is needed override with buffer local settings
;; see: http://orgmode.org/manual/Tracking-TODO-state-changes.html
(setq org-todo-keywords
      '((sequence "TODO(t)" "HOLD(h@/!)" "STARTED(s!)" "|" "DONE(d!)" "CANCELLED(c@)")))

;; hi-lock for highligting entries in the buffer
(global-hi-lock-mode 1)


(provide 'module-usability)
;; module-usability.el ends here


(require 'auto-complete-config)

(let ((default-dict-dir (package--dir "auto-complete" "1.4.20110207")))
  (add-to-list 'ac-dictionary-directories (concat default-dict-dir "/dict")))

(ac-config-default)

(provide 'module-autocompletion)
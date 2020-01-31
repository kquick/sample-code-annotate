(setq org-src-preserve-indentation t)

(require 'htmlize)
(setq org-html-htmlize-output-type "css")
(setq org-html-htmlize-convert-nonascii-to-entities nil)
(setq org-html-htmlize-html-charset "utf-8")


(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)
(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (python . t)
         (C . t)
         ; (sh . t)
         (org . t)
         (latex . t))))

(setq org-confirm-babel-evaluate nil)
(setq org-image-actual-width 'nil)

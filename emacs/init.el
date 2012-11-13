(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-bindings starter-kit-eshell
                      starter-kit-js starter-kit-lisp starter-kit-ruby
                      color-theme color-theme-sanityinc-solarized
                      ruby-electric ruby-compilation rvm yaml-mode
                      less-css-mode scss-mode
                      clojure-mode clojure-test-mode clojurescript-mode nrepl
                      php-mode
                      markdown-mode
                      coffee-mode javascript
                      textmate yasnippet)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'color-theme)

(set-frame-font "Menlo-14")
(color-theme-sanityinc-solarized-dark)

(setq-default tab-width 2)

(delete-selection-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(rvm-use-default)

(defun prompt-with-path ()
  "Returns a prompt that looks like '[user@host:~] $ '"
  (concat "[" (getenv "USER") "@" (getenv "HOSTNAME") ":"
          (cond
           ((string= (eshell/pwd) (getenv "HOME")) "~")
           ((string= (eshell/pwd) "/") "/")
           (t (car ( reverse (split-string (eshell/pwd) "/")))))
          "] " (if (= (user-uid) 0) "# " "$ ")))

(setq eshell-prompt-function 'prompt-with-path)

(if (and (string-equal "darwin" (symbol-name system-type))
         (not (getenv "TERM_PROGRAM")))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))

(setq scss-compile-at-save nil)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(require 'textmate)
(textmate-mode)

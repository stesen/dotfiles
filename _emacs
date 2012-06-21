 (condition-case err
		 (progn
		   (require 'xxx) )
		 (error
		   (message "Can't load xxx-mode %s" (cdr err))))

;--------------------------------------------------
; (server-start)
; (add-hook 'server-visit-hook 
;           '(lambda () 
;              (setq server-window (make-frame)))) 
; 
; (add-hook 'server-done-hook 
;           '(lambda () 
;              (delete-frame server-window) 
;              (setq server-window nil)))
;-------------------------------------------------- 

(setq user-full-name "m00194513")
(setq user-mail-address "m00194513@notesmail.huawei.com")
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
(setq abbrev-file-name "~/.emacs.d/.abbrev_defs") 
(setq load-path (cons "~/.emacs.d/elisp" load-path)) 
(setq version-control t) 
(setq kept-old-versions 2)
(setq kept-new-versions 5) 
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/.emacs.tmp"))) 
(setq backup-by-copying t) 
(require 'icomplete+)
(icomplete-mode t)
;(speedbar t)                                   ; Quick file access with bar
(setq suggest-key-bindings nil)                ; No hints for M-x

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode nil)
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(scroll-bar-mode (quote right))
 '(session-use-package t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'linum+)
(add-to-list 'load-path "~/tools/share/emacs/23.4/lisp")
(add-to-list 'load-path "/usr/share/emacs23/site-lisp/ecb")
(require 'ecb)
;(require 'ecb-autoloads)
(setq ecb-tip-of-the-day nil 
      ecb-tree-indent 4 
      ecb-windows-height 0.1
      ecb-windows-width 0.2)

(setq initial-scratch-message nil)
(setq inhibit-startup-message t)
;; (kill-buffer "*scratch*")
;--------------------------------------------------
; (ecb-layout-define "my-cscope-layout" left nil  
; ;		   (ecb-split-ver 0.5 t)
; ;		   (other-window 1)
; 		   (ecb-set-methods-buffer)  
; 		   ;-----------------------
; 		;--------------------------------------------------
; 		;    (ecb-split-ver 0.8 t)  
; 		;    (other-window 1)  
; 		;    (ecb-set-sources-buffer) 
; 		;-------------------------------------------------- 
; 		   ;-----------------------
; 		   (ecb-split-ver 0.6 t)
; 		   (other-window 1)
; 		   (ecb-set-history-buffer) 
; 		   ;-----------------------
; 		   (ecb-split-ver 0.2 t)
; 		   (other-window 1)
; 		   (ecb-set-cscope-buffer)
; 		   )
; (defecb-window-dedicator ecb-set-cscope-buffer " *ECB cscope-buf*"
; 			 (switch-to-buffer "*cscope*"))
; (setq ecb-history-make-buckets 'never)
; (setq ecb-layout-name "my-cscope-layout")  
;-------------------------------------------------- 
;(ecb-activate)

(add-to-list 'load-path "~/.emacs.d/elisp")
(add-hook 'c-mode-common-hook
 '(lambda ()
         (require 'xcscope)))

(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 
(setq display-time-use-mail-icon t) 
(setq display-time-interval 10) 

(partial-completion-mode 1) 
(fset 'yes-or-no-p 'y-or-n-p) 
(setq resize-mini-windows t) 
(setq Man-notify-method 'pushy) 
(mouse-avoidance-mode 'animate) 
(auto-image-file-mode) 
(auto-compression-mode 1) 
(column-number-mode t) 
(setq default-fill-column 120) 
(blink-cursor-mode -1) 
(show-paren-mode 1)
(mouse-wheel-mode 1)
(setq visible-bell nil) 
(setq scroll-step 1 
      scroll-margin 3 
      scroll-conservatively 10000) 

(setq sentence-end "\\([¡££¡£¿]\\|¡¡\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*") 
(setq sentence-end-double-space nil) 
(setq next-line-add-newlines nil) 

(setq track-eol t) 
(setq-default kill-whole-line t) 
(setq kill-ring-max 200) 
(setq apropos-do-all t) 
(setq-default ispell-program-name "aspell") 
(put 'narrow-to-region 'disabled nil) 
(setq frame-title-format "%b@vj.org") 
(setq x-select-enable-clipboard t)

(setq font-encoding-alist 
(append '(("MuleTibetan-0" (tibetan . 0)) 
("GB2312" (chinese-gb2312 . 0)) 
("JISX0208" (japanese-jisx0208 . 0)) 
("JISX0212" (japanese-jisx0212 . 0)) 
("VISCII" (vietnamese-viscii-lower . 0)) 
("KSC5601" (korean-ksc5601 . 0)) 
("MuleArabic-0" (arabic-digit . 0)) 
("MuleArabic-1" (arabic-1-column . 0)) 
("MuleArabic-2" (arabic-2-column . 0))) font-encoding-alist)) 

(setq calendar-remove-frame-by-deleting t) 
(setq calendar-week-start-day 1) 
(setq christian-holidays nil) 
(setq hebrew-holidays nil) 
(setq islamic-holidays nil) 
(setq chinese-calendar-celestial-stem 
["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]) 
(setq chinese-calendar-terrestrial-branch 
["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"]) 

(autoload 'folding-mode "folding" 
"Minor mode that simulates a folding editor" t) 
(load-library "folding") 
(defun folding-mode-find-file-hook () 
"One of the hooks called whenever a `find-file' is successful." 
(and (assq 'folded-file (buffer-local-variables)) 
folded-file 
(folding-mode 1) 
(kill-local-variable 'folded-file))) 
(setq fold-fold-on-startup t) 
(folding-mode-add-find-file-hook) 

(setq fold-keys-already-setup nil) 
(add-hook 'folding-mode-hook 
(function (lambda() 
(unless fold-keys-already-setup 
(setq fold-keys-already-setup t) 
(define-prefix-command 'ctl-f-folding-mode-prefix) 
(define-key 'ctl-f-folding-mode-prefix "f" 'fold-fold-region) 
(define-key 'ctl-f-folding-mode-prefix "e" 'fold-enter) 
(define-key 'ctl-f-folding-mode-prefix "x" 'fold-exit) 
(define-key 'ctl-f-folding-mode-prefix "b" 'fold-whole-buffer) 
(define-key 'ctl-f-folding-mode-prefix "o" 'fold-open-buffer) 
(define-key 'ctl-f-folding-mode-prefix "h" 'fold-hide) 
(define-key 'ctl-f-folding-mode-prefix "s" 'fold-show) 
(define-key 'ctl-f-folding-mode-prefix "t" 'fold-top-level) 
(define-key 'ctl-f-folding-mode-prefix "f" 'fold-fold-region) 
)

(local-set-key "C-f" 'ctl-f-folding-mode-prefix)))) 
(require 'setnu)
(require 'cedet)
;(semantic-load-enable-minimum-features)
;(semantic-load-enable-code-helpers)
;(semantic-load-enable-guady-code-helpers)
;(semantic-load-enable-excessive-code-helpers)
;(semantic-load-enable-semantic-debugging-helpers) 
(setq semanticdb-default-save-directory "~/tmp/semantic.cache")

(setq line-number-mode t)
(setq column-number-mode t)
(xterm-mouse-mode t)

(setq visible-bell nil)
;(require 'redo+) 
;; (require 'igrep)

(show-paren-mode t)
(setq-default transient-mark-mode t)
;(setq fill-column 80)

; auto complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")  
(require 'auto-complete-config)  
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete")  
(ac-config-default) 

( setq skeleton-pair-alist t)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "<") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)

(setq tab-width 8
       indent-tabs-mode t
             c-basic-offset 8)

(setq default-tab-width 8)
(setq tab-stop-list ())
(setq standard-indent 8)

(defconst my-c-style
          '((c-tab-always-indent        . t)
            (c-comment-only-line-offset . 4)
            (c-hanging-braces-alist     . ((substatement-open after)
                                           (brace-list-open)))
            (c-hanging-colons-alist     . ((member-init-intro before)
                                           (inher-intro)
                                           (case-label after)
                                           (label after)
                                           (access-label after)))
            (c-cleanup-list             . (scope-operator
                                            empty-defun-braces
                                            defun-close-semi))
            (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                           (substatement-open . 0)
                                           (case-label        . 4)
                                           (block-open        . 0)
                                           (knr-argdecl-intro . -)))
            (c-echo-syntactic-information-p . t)
            )
          "My C Programming Style")

(setq c-offsets-alist '((member-init-intro . ++)))
(setq c-basic-offset 8)

;; Customizations for all modes in CC Mode.
(defun my-c-mode-common-hook ()
  ;; add my personal style and set it for the current buffer
  (c-add-style "PERSONAL" my-c-style t)
  ;; other customizations
  ;; we like auto-newline and hungry-delete
  (c-toggle-auto-hungry-state 1)
  ;; key bindings for all supported languages.  We can put these in
  ;; c-mode-base-map because c-mode-map, c++-mode-map, objc-mode-map,
  ;; java-mode-map, idl-mode-map, and pike-mode-map inherit from it.
  (define-key c-mode-base-map "/C-m" 'c-context-line-break)
  )
(c-set-offset (quote cpp-macro) 0 nil)

(setq default-abbrev-mode t)
(setq abbrev-file-name             ;; tell emacs where to read abbrev
         "~/.emacs.d/abbrev_defs")    ;; definitions from...

(defadvice kill-ring-save (before slickcopy activate compile)
	   (interactive
	     (if mark-active (list (region-beginning) (region-end))
	       (list (line-beginning-position)
		     (line-beginning-position 2)))))

(defadvice kill-region (before slickcut activate compile)
	   (interactive
	     (if mark-active (list (region-beginning) (region-end))
	       (list (line-beginning-position)
		     (line-beginning-position 2)))))

;--------------------------------------------------
; (font-lock-add-keywords 'c-mode
; 			'(("\\(\\w+\\)\\s-*\("
; 			   (1 rumpsteak-font-lock-function-call-face)))
; 			t)
;-------------------------------------------------- 
(require 'color-theme)
(color-theme-initialize)
(color-theme-tangotango)

(setq mouse-wheel-scroll-amount `(2))
(setq mouse-wheel-progressive-speed nil)
(mouse-wheel-mode 1)

(setq font-lock-maximum-decoration t)

(defadvice kill-line (before check-position activate)
	   (if (member major-mode
		       '(emacs-lisp-mode scheme-mode lisp-mode
					 c-mode c++-mode objc-mode js-mode
					 latex-mode plain-tex-mode))
	     (if (and (eolp) (not (bolp)))
	       (progn (forward-char 1)
		      (just-one-space 0)
		      (backward-char 1)))))

(defadvice kill-ring-save (before slick-copy activate compile)
	   (interactive (if mark-active (list (region-beginning) (region-end))
			  (message "Copied line")
			  (list (line-beginning-position)
				(line-beginning-position 2)))))

(require 'tabbar)
(tabbar-mode t)
(tabbar-mode)
(global-set-key [(control shift tab)] 'tabbar-backward)
(global-set-key [(control tab)]       'tabbar-forward)

;--------------------------------------------------
; (require 'hl-line)
; (global-hl-line-mode nil)
;-------------------------------------------------- 

(require 'highlight-symbol)
(global-set-key (kbd "M-<f8>") 'highlight-symbol-at-point)
(global-set-key (kbd "M-<f9>") 'highlight-symbol-prev)
(global-set-key (kbd "M-<f10>") 'highlight-symbol-next)
(global-set-key (kbd "M-<f11>") 'highlight-symbol-prev-in-defun)
(global-set-key (kbd "M-<f12>") 'highlight-symbol-next-in-defun)
(global-set-key (kbd "<f5> <f5>") 'revert-buffer-with-coding-system)

(setq tags-file-name "TAGS")
;(setq tags-table-list '("./TAGS"))

;; Mousewheel
(defun sd-mousewheel-scroll-up (event)
  "Scroll window under mouse up by five lines."
  (interactive "e")
  (let ((current-window (selected-window)))
    (unwind-protect
      (progn 
	(select-window (posn-window (event-start event)))
	(scroll-up 2))
      (select-window current-window))))

(defun sd-mousewheel-scroll-down (event)
  "Scroll window under mouse down by five lines."
  (interactive "e")
  (let ((current-window (selected-window)))
    (unwind-protect
      (progn 
	(select-window (posn-window (event-start event)))
	(scroll-down 2))
      (select-window current-window))))

(global-set-key (kbd "<mouse-5>") 'sd-mousewheel-scroll-up)
(global-set-key (kbd "<mouse-4>") 'sd-mousewheel-scroll-down)

;; 让 shell mode 可以正常显示颜色
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(require 'ansi-color)
;; 这样直接把颜色滤掉
(add-hook 'eshell-preoutput-filter-functions
          'ansi-color-filter-apply)

(setq mouse-sel-mode t)
(defun track-mouse (e))
;--------------------------------------------------
; (global-set-key [(control m )] 'set-mark-command)
;-------------------------------------------------- 

(require 'highlight-tail)
(setq highlight-tail-colors
      '(("black" . 0)
	("#bc2525" . 25)
	("black" . 66)))
	
(add-to-list 'load-path "/usr/share/emacs/site-lisp/emacs-goodies-el/")

(xterm-mouse-mode t)

;(setq default-fill-column 80);默认显示 80列就换行
(setq frame-title-format '("%f"))
(global-linum-mode t)
(column-number-mode t)
(transient-mark-mode t)
(setq line-number-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(display-time)
(show-paren-mode t)
(setq lazy-lock-defer-on-scrolling t)
(setq font-lock-maximum-decoration t)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(mouse-avoidance-mode 'animate);光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。很好玩阿，这个功能

(set-clipboard-coding-system 'ctext)
(setq mouse-yank-at-point t);支持中键粘贴

(load-file "~/.emacs.d/elisp/tabbar.el")
(require 'tabbar)
(tabbar-mode)

(require 'xcscope) ;;加载xcscope
(require 'session) ;;加载session
(add-hook 'after-init-hook 'session-initialize) ;; 启动时初始化session
(add-hook 'find-file-hooks 'auto-insert)
(customize-set-variable 'scroll-bar-mode' right)
(setq make-backup-files nil)
(setq auto-save-mode nil)
(setq mouse-yank-at-point t)
(setq make-backup-files nil)

'(auto-fill-mode t)

(global-set-key [f11] 'ecb-toggle-ecb-windows)

(defadvice kill-ring-save (before slickcopy activate compile)
           "When called interactively with no active region, copy a single line instead."
           (interactive
             (if mark-active (list (region-beginning) (region-end))
               (list (line-beginning-position)
                     (line-beginning-position 2)))))

(defadvice kill-region (before slickcut activate compile)
           "When called interactively with no active region, kill a single line instead."
           (interactive
             (if mark-active (list (region-beginning) (region-end))
               (list (line-beginning-position)
                     (line-beginning-position 2)))))
(put 'scroll-left 'disabled nil)

(add-hook 'c-mode-hook
          '(lambda ()
             (c-toggle-auto-state)))

(setq smart-compile-alist
      '( ("\\.rb$" . "spec %f")))

;;设定行距
(setq default-line-spacing 0)
;;页宽 
;;(setq default-fill-column 90)
;;缺省模式 text-mode
(setq default-major-mode 'text-mode)
;;设置删除纪录
(setq kill-ring-max 200)
;;以空行结束
;; (setq require-final-newline t) 
;;语法加亮
;; (global-font-lock-mode t)
;;高亮显示区域选择
(transient-mark-mode t)
;;页面平滑滚动， scroll-margin 5 靠近屏幕边沿2行时开始滚动，可以很好的看到上下文。
(setq scroll-margin 5
      scroll-conservatively 10000)
;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;粘贴于光标处，而不是鼠标指针处
(setq mouse-yank-at-point t)
;;闪屏报警
(setq visible-bell nil)
;;使用 y or n 提问
(fset 'yes-or-no-p 'y-or-n-p)
;;锁定行高
(setq resize-mini-windows nil)
;;递归 minibuffer
(setq enable-recursive-minibuffers t)
;; 当使用 M-x COMMAND 后，过 1 秒钟显示该 COMMAND 绑定的键。
(setq suggest-key-bindings 1) ;;

;;显示时间
(display-time)
;;时间格式
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
;;显示列号
(setq column-number-mode t)
;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")
;;不生成临时文件
;; (setq-default make-backup-files nil)
;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)
(setq tab-always-indent nil)

(when (and (equal emacs-major-version 23)
           (equal emacs-minor-version 3))
  (eval-after-load "bytecomp"
                   '(add-to-list 'byte-compile-not-obsolete-vars
                                 'font-lock-beginning-of-syntax-function))
;; tramp-compat.el clobbers this variable!
(eval-after-load "tramp-compat"
                 '(add-to-list 'byte-compile-not-obsolete-vars
                                 'font-lock-beginning-of-syntax-function)))

;; project root path
(setq semanticdb-project-roots
      (list (expand-file-name "/")))
;; 避免semantic占用CPU过多
(setq-default semantic-idle-scheduler-idle-time 432000)

;;快捷键
(global-set-key [M-/] 'hippie-expand)
;;右Ctrl+\ 自动补全menu
(global-set-key "\C-\\" 'semantic-ia-complete-symbol-menu)
;; 跳转到全局定义
(global-set-key "\C-xg" 'cscope-find-global-definition-no-prompting)

;; (add-hook 'find-file-hook 'set-trailing-whitespace)
;; (defun set-trailing-whitespace ()
;;   (progn (if (stringp mode-name)
;;       (if (string= mode-name "Text")
;; 	(progn (make-variable-buffer-local 'show-trailing-whitespace)
;; 	  (setq show-trailing-whitespace t))))))

;; Lisp (SLIME) interaction
(setq inferior-lisp-program "clisp")
;(add-to-list 'load-path "../slime")
;(require 'slime)
(require 'slime-autoloads)
(slime-setup)

(setq woman-default-indent 7            ;缩进格式
      woman-fill-frame t                ;填充满屏幕
      woman-use-own-frame nil           ;同一个frame
      woman-cache-level 3)              ;缓存级别, 最快

(setq term-eol-on-send t)


(defun my-close-scratch ()
   (kill-buffer "*scratch*")
     (if (not (delq nil (mapcar 'buffer-file-name (buffer-list))))
            (new-untitled-buffer)
	        ))

;--------------------------------------------------
; (defun my-emacs-startup-hook ()
;   (my-close-scratch))
; (add-hook 'emacs-startup-hook 'my-emacs-startup-hook)
; (defun new-untitled-buffer ()
;   "Opens a new empty buffer."
;   (interactive)
;   (let ((buf (generate-new-buffer "Untitled")))
;     (switch-to-buffer buf)
;     (normal-mode)
;     (setq buffer-offer-save t))
;   (add-hook 'kill-buffer-query-functions
; 	    'ask-to-save-modified nil t)
;   )
; (defun my-close-untitled ()
;   (if (get-buffer "Untitled")
;     (kill-buffers-by-name "Untitled")))
; 
; (add-hook 'find-file-hook 'my-close-untitled)
;-------------------------------------------------- 
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(defun hide-cscope-buffer ()
 (delete-windows-on *cscope*))
;--------------------------------------------------
;   "Turn off the display of cscope buffer"
;   (interactive)
;   (if (not cscope-display-cscope-buffer)
;     (progn
;       (set-variable 'cscope-display-cscope-buffer t)
;       (message "Turning ON display of cscope results buffer."))
;     (set-variable 'cscope-display-cscope-buffer nil)
;     (message "Toggling OFF display of cscope results buffer.")))
;-------------------------------------------------- 
(global-set-key (kbd "<f1> s") 'cscope-find-this-symbol)
(global-set-key (kbd "<f1> d") 'cscope-find-global-definition)
(global-set-key (kbd "<f1> c") 'cscope-find-functions-calling-this-function)
(global-set-key (kbd "<f1> f") 'cscope-find-this-file)
(global-set-key (kbd "<f1> m") 'cscope-pop-mark)
(global-set-key (kbd "<f1> n") 'cscope-next-symbol)
(global-set-key (kbd "<f1> p") 'cscope-prev-symbol)
(global-set-key (kbd "<f1> h") 'hide-cscope-buffer)
(global-set-key (kbd "<f1> x") 'cscope-next-file)
(global-set-key (kbd "<f1> z") 'cscope-prev-file)
(global-set-key (kbd "<f1> t") 'cscope-find-this-text-string)
(global-set-key (kbd "<f1> g") 'cscope-find-global-definition-no-prompting)
(global-set-key (kbd "<f1> e") 'cscope-find-egrep-pattern)
(global-set-key (kbd "<f1> i") 'cscope-find-files-including-file)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)


(global-set-key (kbd "C-x r C-@") 'rm-set-mark)
(global-set-key (kbd "C-x r C-x") 'rm-exchange-point-and-mark)
(global-set-key (kbd "C-x r C-w") 'rm-kill-region)
(global-set-key (kbd "C-x r M-w") 'rm-kill-ring-save)
(autoload 'rm-set-mark "rect-mark"
	  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
	  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
	  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
	  "Copy a rectangular region to the kill ring." t)

(setq bookmark-save-flag 1)
(global-cwarn-mode 1)

;;ibuffer
(require 'ibuffer)
(global-set-key (kbd "<f2> <f2>") 'ibuffer)

;;;;; c/c++ header include guard
(defun insert-include-guard ()
  "insert include guard for c and c++ header file."
  (interactive)
  (setq file-macro
	(concat (replace-regexp-in-string "\\." "_" (upcase (file-name-nondirectory buffer-file-name))) "_"))
  (setq guard-begin (concat "#ifndef " file-macro "\n"
			    "#define " file-macro "\n\n"))
  (setq guard-end
	(concat "\n\n#endif \/\/ " file-macro "\n"))
  (setq position (point))
  (goto-char (point-min))
  (insert guard-begin)
  (goto-char (point-max))
  (insert guard-end)
  (goto-char (+ position (length guard-begin))))

(require 'multi-term)
(setq multi-term-program "/bin/bash")

(require 'git)
(require 'git-blame)
(setq save-place-file "~/.emacs.d/saveplace")
(require 'saveplace)
(setq-default save-place t)

(defun lisp-indent-or-complete (&optional arg)
 (interactive "p")
 (if (or (looking-back "^\\s-*") (bolp))
  (call-interactively 'lisp-indent-line)
  (call-interactively 'slime-indent-and-complete-symbol)))
(eval-after-load "lisp-mode"
 '(progn
	 (define-key lisp-mode-map (kbd "TAB") 'lisp-indent-or-complete)))

(add-hook 'c-mode-hook '(lambda() (c-set-style "linux")))
(add-hook 'c-mode-hook (lambda () (local-set-key [(return)] 'newline-and-indent) ))
(add-hook 'c-mode-hook (lambda () (setq comment-column 48) ))
(add-hook 'perl-mode-hook (lambda () (local-set-key [(return)] 'newline-and-indent) ))
(add-hook 'perl-mode-hook (lambda () (setq comment-column 48) ))

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)

(require 'auto-complete)
(add-to-list 'load-path "/home/m00194513/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/m00194513/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")

(add-to-list 'load-path "/usr/share/emacs/site-lisp/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
;(yas/load-directory "/usr/share/emacs/site-lisp/yasnippet/snippets/text-mode")

(require 'whitespace)
;(setq whitespace-line-column 80)
;(setq whitespace-style '(face lines-tail indentation trailing space-before-tab))
(setq whitespace-style '(face lines-tail trailing space-before-tab))
(add-hook 'c-mode-hook 'whitespace-mode)

(global-set-key (kbd "<f2> a") 'windmove-left)         ; move to left windnow
(global-set-key (kbd "<f2> d") 'windmove-right)        ; move to right window
(global-set-key (kbd "<f2> w") 'windmove-up)           ; move to upper window
(global-set-key (kbd "<f2> s") 'windmove-down)         ; move to downer window

(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)

(setq inferior-lisp-program "/usr/bin/clisp -K full")
(require 'undo-tree)
(global-undo-tree-mode)

(defun confirm-exit-emacs ()
  "ask for confirmation before exiting emacs"
  (interactive)
  (if (yes-or-no-p "Are you sure you want to exit? ")
    (save-buffers-kill-emacs)))

(global-unset-key "\C-x\C-c")
(global-set-key "\C-x\C-c" 'confirm-exit-emacs)

(defun my-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
			       (?` ?` _ "''")
			       (?\" _ "\"" >)
			       (?\' _ "\'" >)
			       (?\( _ ")")
			       (?\[ _ "]")
			       (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-auto-pair)
(add-hook 'c++-mode-hook 'my-auto-pair)
(add-hook 'perl-mode-hook 'my-auto-pair)
(add-hook 'sh-mode-hook 'my-auto-pair)

(add-to-list 'load-path "~/.emacs.d/company")
(autoload 'company-mode "company" nil t)


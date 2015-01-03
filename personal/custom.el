;;; Package --- Summary: 我的自定义配置
;;; Commentary:
;;; code:

;;; 装载ECB
 ;; (require 'ecb)
 ;; (require 'ecb-autoloads)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(ecb-options-version "2.40")
 ;; 窗口最大化
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;; TAB显示的背景色及字体颜色与普通文字一样
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:background "#3F3F3F" :foreground "darkgray")))))

;;; TAB的空白格为4个字符
 ;; (setq-default c-basic-offset 4 c-default-style "linux")
 ;; (setq-default tab-width 4 indent-tabs-mode t)

;;; 自动加载iimage mode
;; (autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
;; (autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

;;; 装载yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

 ;; (require 'auto-complete-clang)
;; (define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
;; replace C-S-<return> with a key binding that you want

;;; ggtags
 ;; (add-hook 'c-mode-common-hook
 ;;          (lambda ()
 ;;            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
 ;;              (ggtags-mode 1))))

;;; ctags
;; (require 'ctags)
;; (setq tags-revert-without-query t)
;; (global-set-key (kbd "<f7>") 'ctags-create-or-update-tags-table)
;; (global-set-key (kbd "M-.")  'ctags-search)

;; Tags table file
;; (setq tags-table-list '("~/UnixProgramming/CStudy/TAGS"))

;;; use rvm to manage ruby versions within emacs
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(provide 'custom)
;;; custom.el ends here

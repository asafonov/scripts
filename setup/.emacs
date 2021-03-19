(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 120 4))
(setq indent-tabs-mode nil)
(electric-indent-mode -1)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq eshell-history-size 512)
(setq mail-user-agent 'message-user-agent)

(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)

(menu-bar-mode -1)
(display-time-mode 1)

(setq user-mail-address "me@asafonov.org")
(setq user-full-name "Alexander Safonov")

(define-advice open-gnutls-stream (:after (&rest args) workaround-for-930573)
  (sleep-for 0 250))

(setq
  gnus-select-method '(nnmh "")
  mail-sources
    '(
       (pop :server "pop.gmail.com"
         :port 995
         :user ""
         :password ""
         :stream ssl)
  ))

(setq send-mail-function 'smtpmail-send-it)
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-stream-type 'ssl)
(setq smtpmail-smtp-service 465)

;;; carian-theme.el --- A theme inspired by Ranni from Elden Ring -*- lexical-binding: t; -*-

;; Authors: tachyonora, tichelmorres
;; Version: 2.0
;; Filename: carian-theme.el
;; URL: https://github.com/tachyonora/carian.nvim

;;; Code:

(deftheme carian
  "A theme inspired by Ranni from Elden Ring.")

;;; @TODO  Review these later
(let ((carian-bg       "#171c26")
      (carian-bg1      "#37394a")
      (carian-fg       "#dfe4f2")
      (carian-fg1      "#a6adc8")
      (carian-white    "#e9ecfd")
      (carian-black0   "#797c8c")
      (carian-black1   "#4c5059")
      (carian-red0     "#a51c1a")
      (carian-red1     "#af331c")
      (carian-lav0     "#b4b6d9")
      (carian-lav1     "#707287")
      (carian-tan0     "#b39c8c")
      (carian-tan1     "#755443")
      (carian-blue0    "#80b2d2")
      (carian-blue1    "#1755a6")
      (carian-magenta0 "#b7add9")
      (carian-magenta1 "#997ebf")
      (carian-cyan0    "#c7d7e8")
      (carian-cyan1    "#9ab6ce"))
  (custom-theme-set-faces
   `carian

   ;;; Vanilla:

   ;; UI:
   `(cursor                   ((t ( :background                             ,carian-white                                           ))))
   `(default                  ((t ( :background                             ,carian-bg       :foreground ,carian-fg                 ))))
   `(error                    ((t ( :foreground                             ,carian-red1     :weight      bold                      ))))
   `(fringe                   ((t ( :background                             ,carian-bg                                              ))))
   `(highlight                ((t ( :background                             ,carian-bg1                                             ))))
   `(hl-line                  ((t ( :background                             ,carian-bg1      :extend      t                         ))))
   `(isearch                  ((t ( :background                             ,carian-red0     :foreground ,carian-bg                 ))))
   `(lazy-highlight           ((t ( :background                             ,carian-lav1     :foreground ,carian-bg                 ))))
   `(line-number              ((t ( :inherit     default        :foreground ,carian-black1                                          ))))
   `(line-number-current-line ((t ( :inherit     line-number    :background ,carian-bg1      :foreground ,carian-fg :weight    bold ))))
   `(link                     ((t ( :foreground                             ,carian-blue0    :bold        t         :underline t    ))))
   `(link-visited             ((t ( :foreground                             ,carian-magenta1 :bold        t         :underline t    ))))
   `(match                    ((t ( :inherit     lazy-highlight                                                                     ))))
   `(minibuffer-prompt        ((t ( :foreground                             ,carian-cyan1                                           ))))
   `(region                   ((t ( :extend nil                 :background ,carian-bg1                                             ))))
   `(show-paren-match         ((t ( :background                             ,carian-tan0     :foreground ,carian-bg                 ))))
   `(show-paren-mismatch      ((t ( :background                             ,carian-red1     :foreground ,carian-bg                 ))))
   `(success                  ((t ( :foreground                             ,carian-lav0     :weight      bold                      ))))
   `(warning                  ((t ( :foreground                             ,carian-tan1     :weight      bold                      ))))

   ;; Mode Line:
   `(mode-line          ((t ( :background ,carian-fg1    :foreground ,carian-bg  ))))
   `(mode-line-inactive ((t ( :background ,carian-black1 :foreground ,carian-fg1 ))))

   ;; Font Lock -- classic faces:
   `(font-lock-builtin-face           ((t ( :foreground ,carian-magenta0                          ))))
   `(font-lock-comment-face           ((t ( :foreground ,carian-black0                            ))))
   `(font-lock-comment-delimiter-face ((t ( :inherit     font-lock-comment-face                   ))))
   `(font-lock-constant-face          ((t ( :foreground ,carian-magenta0                          ))))
   `(font-lock-doc-face               ((t ( :foreground ,carian-lav1            :italic t         ))))
   `(font-lock-function-name-face     ((t ( :foreground ,carian-cyan0                             ))))
   `(font-lock-keyword-face           ((t ( :foreground ,carian-red0                              ))))
   `(font-lock-negation-char-face     ((t ( :foreground ,carian-red0                              ))))
   `(font-lock-preprocessor-face      ((t ( :foreground ,carian-red0                              ))))
   `(font-lock-string-face            ((t ( :foreground ,carian-lav0                              ))))
   `(font-lock-type-face              ((t ( :foreground ,carian-magenta0                          ))))
   `(font-lock-variable-name-face     ((t ( :foreground ,carian-fg                                ))))
   `(font-lock-warning-face           ((t ( :foreground ,carian-red1            :italic t :bold t ))))

   ;; Font Lock -- Emacs 28/29 tree-sitter-era faces:
   `(font-lock-bracket-face       ((t ( :foreground ,carian-tan0                               ))))
   `(font-lock-delimiter-face     ((t ( :foreground ,carian-red0                               ))))
   `(font-lock-number-face        ((t ( :foreground ,carian-fg                    :weight bold ))))
   `(font-lock-operator-face      ((t ( :foreground ,carian-red0                               ))))
   `(font-lock-property-name-face ((t ( :foreground ,carian-fg                                 ))))
   `(font-lock-property-use-face  ((t ( :inherit     font-lock-property-name-face              ))))
   `(font-lock-punctuation-face   ((t ( :foreground ,carian-fg                                 ))))
   `(font-lock-escape-face        ((t ( :foreground ,carian-tan1                               ))))

   ;; Search:
   `(isearch        ((t ( :background ,carian-white :foreground ,carian-bg  ))))
   `(isearch-fail   ((t ( :background ,carian-red1  :foreground ,carian-bg  ))))
   `(lazy-highlight ((t ( :background ,carian-bg1   :foreground ,carian-fg1 ))))

   ;; Whitespace:
   `(trailing-whitespace         ((t ( :foreground ,carian-bg           :background ,carian-blue1    ))))
   `(whitespace-space            ((t ( :background ,carian-bg           :foreground ,carian-black1   ))))
   `(whitespace-tab              ((t ( :background ,carian-bg           :foreground ,carian-black1   ))))
   `(whitespace-hspace           ((t ( :background ,carian-bg           :foreground ,carian-tan1     ))))
   `(whitespace-line             ((t ( :background ,carian-tan1         :foreground ,carian-magenta0 ))))
   `(whitespace-newline          ((t ( :background ,carian-bg           :foreground ,carian-tan1     ))))
   `(whitespace-empty            ((t ( :background ,carian-tan0         :foreground ,carian-tan1     ))))
   `(whitespace-indentation      ((t ( :background ,carian-white        :foreground ,carian-red1     ))))
   `(whitespace-space-after-tab  ((t ( :background ,carian-white        :foreground ,carian-blue0    ))))
   `(whitespace-space-before-tab ((t ( :background ,carian-lav0         :foreground ,carian-lav0     ))))
   `(whitespace-trailing         ((t ( :inherit     trailing-whitespace                              ))))

   ;; Compilation:
   `(compilation-info           ((t ( :foreground ,carian-tan0                  :inherit unspecified ))))
   `(compilation-warning        ((t ( :foreground ,carian-lav0     :bold   t    :inherit unspecified ))))
   `(compilation-error          ((t ( :foreground ,carian-magenta0                                   ))))
   `(compilation-mode-line-fail ((t ( :foreground ,carian-magenta0 :weight bold :inherit unspecified ))))
   `(compilation-mode-line-exit ((t ( :foreground ,carian-tan0     :weight bold :inherit unspecified ))))

   ;; Dired:
   `(dired-directory      ((t ( :foreground ,carian-magenta0 :weight      bold                     ))))
   `(dired-ignored        ((t ( :foreground ,carian-lav0     :inherit     unspecified              ))))
   `(dired-broken-symlink ((t ( :background ,carian-red0     :foreground ,carian-tan0 :weight bold ))))

   ;; EWW:
   `(header-line           ((t ( :background ,carian-fg1 :foreground ,carian-bg         ))))
   `(eww-valid-certificate ((t ( :background ,carian-fg1 :foreground ,carian-bg :bold t ))))

   ;;; Third Party:

   ;; Rainbow-delimiters:
   `(rainbow-delimiters-depth-1-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-2-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-3-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-4-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-5-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-6-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-7-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-8-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-depth-9-face   ((t (:foreground ,carian-tan0              ))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,carian-red1 :weight bold ))))

   ;; Corfu:
   `(corfu-current ((t (:background ,carian-bg1))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; EWW header line -- bold the title + ": " prefix:
(unless (advice-member-p 'carian--eww-bold-title 'eww-update-header-line-format)
  (advice-add 'eww-update-header-line-format :after
              (defun carian--eww-bold-title ()
                (when (stringp header-line-format)
                  (let* ((url (or (plist-get eww-data :url) ""))
                         (len (length header-line-format))
                         (cut (- len (length url))))
                    (when (and (> cut 0)
                               (string= (substring header-line-format cut) url))
                      (add-face-text-property 0 cut 'bold t header-line-format)))))))

(provide-theme 'carian)
(provide 'carian-theme)
;;; carian-theme.el ends here.

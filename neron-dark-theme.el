;;; neron-dark-theme.el --- Neron Dark Theme -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; A dark theme with neon-pastel accents.
;;
;; Target contrast is ~6.66. Originally derived from VSCode's Neon Vommit
;; but modified with lower contrast to be easier on the eyes. Depends on
;; `neron-theme-base' for face mapping and terminal color degradation.

;;; Code:

(require 'neron-theme-base)

(deftheme neron-dark
  "A dark theme with neon-pastel accents.")

(let ((colors
       '((bg-primary      "#222222")
         (bg-secondary    "#27282c")
         (bg-muted        "#2f2f2f")
         (fg-primary      "#a6a8a9")
         (fg-secondary    "#a1a1a1")
         (fg-muted        "#747272")
         (accent-blue     "#69aaff")
         (accent-cyan     "#00bbb7")
         (accent-green    "#61bd09")
         (accent-magenta  "#ff77cf")
         (accent-orange   "#fd892c")
         (accent-purple   "#a89bff")
         (accent-red      "#f88785")
         (accent-warning  "#d2a022")
         (accent-yellow   "#b8aa07")
         (bg-diff-added   "#152615")
         (bg-diff-removed "#301d1e")
         (bg-diff-header  "#092147")
         (border          "#404047")
         (cursor          "#4455bb")
         (comment         "#bda38e")))

      (overrides
       '((match :foreground "white" :background bg-muted
                :weight bold :slant i
                :box (:line-width 1 :color border)
                :underline (:style line :position -5))
         (isearch-fail :background "red" :foreground "white" :inherit match)
         (vertico-current :foreground "white" :background bg-muted
                          :weight bold :slant o :extend t)
         (dired-efap-face :foreground "white"
                          :box (:line-width 2 :color border :style pressed-button))
         (show-paren-match :foreground "white" :weight extra-bold)
         (button :foreground "white" :weight semi-bold
                 :underline (:color bg-muted :style double-line)))))

  (neron-theme-create 'neron-dark colors overrides))

(provide-theme 'neron-dark)
;;; neron-dark-theme.el ends here

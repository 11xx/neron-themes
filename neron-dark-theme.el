;;; neron-dark-theme.el --- Neron Dark Theme -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; A dark theme with colorful neon-pastel accents.
;;
;; Target contrast is ~6.66. Originally derived from VSCode's Neon Vommit
;; but modified with lower contrast to be easier on the eyes. Depends on
;; `neron-theme-base' for face mapping and terminal color degradation.

;;; Code:

(require 'neron-theme-base)

(deftheme neron-dark
  "A dark theme with colorful neon-pastel accents.")

(let ((colors
       '((bg-primary      "#222222")
         (bg-secondary    "#27282c")
         (bg-hl           "#2f2f2f")
         (bg-selection    "#355565")
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
       '(
         ;; use simplified syntax
         )))

  (neron-theme-create 'neron-dark colors overrides))

(provide-theme 'neron-dark)
;;; neron-dark-theme.el ends here

;;; neron-dark-theme.el --- Neron Dark Theme -*- lexical-binding: t; -*-

;; Author: 11xx
;; Version: 2026.4.13
;; Package-Requires: ((emacs "28.1"))
;; Keywords: faces, theme, dark, light
;; URL: https://github.com/11xx/neron-themes

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
       '(;; simplified syntax
         (whitespace-tab :background "#330022")

         ;; Keep the selection clearly visible at every color depth. On
         ;; truecolor terminals the GUI teal is used as-is; the automatic
         ;; 256/16 degradation of `bg-selection' collapses to a near-invisible
         ;; gray (and would make `distant-foreground' equal the background), so
         ;; pin explicit, high-contrast fallbacks here. `region' also backs
         ;; rectangle-mark-mode, so this is what restores rectangle selection
         ;; in `emacsclient -nw' frames that lack truecolor.
         (region :background (:gui bg-selection :256 "color24" :tty "blue")
                 :foreground (:gui unspecified :256 unspecified :tty "brightwhite")
                 :distant-foreground (:gui fg-primary :256 fg-primary :tty unspecified)
                 :extend t)
         )))

  (neron-theme-base-create 'neron-dark colors overrides))

(provide-theme 'neron-dark)
;;; neron-dark-theme.el ends here

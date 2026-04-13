;;; neron-light-theme.el --- Neron Light Theme -*- lexical-binding: t; -*-

;; Author: 11xx
;; Version: 2026.4.13
;; Package-Requires: ((emacs "28.1"))
;; Keywords: faces, theme, dark, light
;; URL: https://codeberg.org/11xx/neron-themes

;;; Commentary:
;;
;; A light theme derived from `neron-dark', inspired by Gnome Adwaita.
;;
;; Target contrast is ~6.66. Depends on `neron-theme-base' for face
;; mapping and terminal color degradation.

;;; Code:

(require 'neron-theme-base)

(deftheme neron-light
  "A light theme derived from `neron-dark', inspired by Adwaita.")

(let ((colors
       '((bg-primary      "#ffffff")
         (bg-secondary    "#f6f6f6")
         (bg-hl           "#fdf6df")
         (bg-selection    "#c8d8f9") ; "#f3f6ff"
         (fg-primary      "#545e62")
         (fg-secondary    "#596368")
         (fg-muted        "#8c8d8d")
         (accent-blue     "#0353c6")
         (accent-cyan     "#006861")
         (accent-green    "#316900")
         (accent-orange   "#964505")
         (accent-magenta  "#b30071")
         (accent-purple   "#4d2eff")
         (accent-red      "#ba0d0d")
         (accent-warning  "#7a5524")
         (accent-yellow   "#615f0b")
         (bg-diff-added   "#d5ffd5")
         (bg-diff-removed "#ffd4d4")
         (bg-diff-header  "pale turquoise")
         (border          "light gray")
         (cursor          "#3d51c2") ; 3647aa
         (comment         "#a0a1a7")))

      (overrides
       '(;; simplified syntax
         (whitespace-tab :background "#ffeeff")
         )))

  (neron-theme-base-create 'neron-light colors overrides))

(provide-theme 'neron-light)
;;; neron-light-theme.el ends here

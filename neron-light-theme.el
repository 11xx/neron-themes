;;; neron-light-theme.el --- Neron Light Theme -*- lexical-binding: t; -*-

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
         (bg-muted        "#fdf6df")
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
         (cursor          "#3d51c2")
         (comment         "#a0a1a7")))

      (overrides
       '((match :foreground "black" :background bg-muted
                :weight bold :slant i
                :box (:line-width 1 :color border)
                :underline (:style line :position -5))
         (isearch-fail :background "red" :foreground "black" :inherit match)
         (vertico-current :foreground "black" :background bg-muted
                          :weight bold :slant o :extend t)
         (dired-efap-face :foreground "black"
                          :box (:line-width 2 :color border :style pressed-button))
         (show-paren-match :foreground "black" :weight extra-bold)
         (button :foreground "black" :weight semi-bold
                 :underline (:color bg-muted :style double-line)))))

  (neron-theme-create 'neron-light colors overrides))

(provide-theme 'neron-light)
;;; neron-light-theme.el ends here

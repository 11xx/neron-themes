;;; neron-themes.el --- Pair of light/dark neon-pastel themes -*- lexical-binding: t; -*-

;; Author: Lucas G <g@11xx.org>
;; Version: 20260303
;; Package-Requires: ((emacs "28"))
;; Keywords: faces, theme, dark, light
;; URL: https://codeberg.org/11xx/neron-themes
;; SPDX-License-Identifier: Unlicense

;;; Commentary:

;; A pair of neon-pastel themes (dark and light).
;;
;; The target contrast is 6.66.
;;
;; - Dark theme derived from Neon Vommit (https://github.com/ghgofort/vscode-neon-vommit-theme)
;;   but with lower contrast.
;; - Light theme inspired by Gnome Terminal's Adwaita light theme.

;;; Code:

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide 'neron-themes)
;;; neron-themes.el ends here

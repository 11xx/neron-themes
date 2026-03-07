;;; neron-themes.el --- Pair of colorful light/dark neon-pastel themes -*- lexical-binding: t; -*-

;; Author: Lucas G <g@11xx.org>
;; Version: 20260304
;; Package-Requires: ((emacs "28"))
;; Keywords: faces, theme, dark, light
;; URL: https://codeberg.org/11xx/neron-themes
;; SPDX-License-Identifier: Unlicense

;;; Commentary:

;; A pair of colorful neon-pastel themes (dark and light).
;;
;; The target contrast is 6.66.
;;
;; - Dark theme derived from Neon Vommit (https://github.com/ghgofort/vscode-neon-vommit-theme)
;;   but with lower contrast.
;; - Light theme inspired by Gnome Terminal's Adwaita light theme.

;;; Code:

(defgroup neron-theme nil
  "neron-theme options."
  ;; todo maybe
  :group 'faces)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide 'neron-themes)
;;; neron-themes.el ends here

;;; neron-themes.el -*- lexical-binding: t; -*-

;; Author: 11xx
;; Version: 20260303
;; Package-Requires: ((emacs "27.1"))
;; Keywords: neron neon pastel low contrast theme dark light faces
;; URL: https://github.com/yourname/neron-themes
;; SPDX-License-Identifier: Unlicense

;;; Commentary:
;; A neon-pastel 6.66-contrast dark and light theme pair.
;; Load with: (load-theme 'neron-dark) or (load-theme 'neron-light)
;; Themes are already pre-generated.

;;; Code:

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide 'neron-themes)
;;; neron-themes.el ends here

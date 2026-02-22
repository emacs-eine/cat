;;; cat.el --- View files with syntax highlighting  -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Shen, Jen-Chieh

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Maintainer: Shen, Jen-Chieh <jcs090218@gmail.com>
;; URL: https://github.com/emacs-eine/cat
;; Version: 1.0.0
;; Package-Requires: ((emacs "26.1")
;;                    (e2ansi "0.2.0")
;;                    (commander "0.7.0")
;;                    (elenv "0.1.0")
;;                    (msgu "0.1.0"))
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; View files with syntax highlighting.
;;

;;; Code:

(require 'elenv)
(require 'msgu)
(require 'e2ansi)

(defgroup cat nil
  "View files with syntax highlighting."
  :prefix "cat-"
  :group 'tool
  :link '(url-link :tag "Repository" "https://github.com/emacs-eine/cat"))

(defvar cat--set-number nil
  "If non-nil display with line numbers.")

;;;###autoload
(defun cat-run (&rest args)
  "Run on ARGS."
  (let ((filenames (mapcar #'expand-file-name args)))
    (dolist (filename filenames)
      (message "[+] %s" filename)
      (with-current-buffer (find-file filename)
        (ignore-errors (font-lock-ensure))
        (goto-char (point-min))
        (let* ((max-line (save-excursion (line-number-at-pos (point-max))))
               (max-line (elenv-2str max-line))
               (offset (elenv-2str (length max-line)))
               (line-no 1))
          (while (not (eobp))
            (let* ((line (buffer-substring (line-beginning-position) (line-end-position)))
                   (line (e2ansi-string-to-ansi line)))
              (if cat--set-number
                  (message (concat "%" offset "d  %s") line-no line)
                (message "%s" line)))
            (forward-line 1)
            (cl-incf line-no)))))))

(provide 'cat)
;;; cat.el ends here

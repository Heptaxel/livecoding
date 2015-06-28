;;;; Heptaxel Livecoding Library

(in-package #:livecoding)

(defmacro continue-on-error (&body body)
  "Provide a case to continue in case of error."
  `(restart-case
       (progn ,@body)
     (continue () :report "Continue")))

(defun live ()
  "Handle updates to code via swank"
  (continue-one-error
   (let ((connection (or swank::*emacs-connection*
			  (swank::default-connection))))
     (when connection
       (swank::handle-requests connection t)))))



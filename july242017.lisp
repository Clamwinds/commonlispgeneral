(defun half (n)
  (/ n 2))

(lambda (n) (/ n 2))
(mapcar (lambda (n) (/ n 2)) '(2 4 6))
                                        ; lambda is not a true function; it is a macro
                                        ; Do the custom repl chapter of land of lisp

(defun game-read ()
  (let ((cmd (read-from-string
              (concatenate 'string "(" (read-line)  ")"))))
   (flet ((quote-it (x)
               (list 'quote x)))
     (cons (car cmd) (mapcar #'quote-it (cdr cmd))))))

;the read-from-string command works just like the read commadn but lets us read a syntax expression (or any other basic lisp datatype) from a string instead of directly from the console

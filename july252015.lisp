(defmacro setf (reference value &environment env)
  (multiple-value-bind (vars vals stores store-form access-form)
      (get-setf-method reference e)
    (declare (ignore access-form))
    `(let* ,(mapcar #'list
                    (append vars stores)
                    (append vals (List value)))
       ,store form)))

;(multiple-value-bind (+ 5 5))
;(multiple-value-bind vars vals stors store-form access-form)
; need to find what the fuck this is

(defparameter *h* (make-hash-table))
(hash-table-count *h*)
(hash-table-size *h*)
(hash-table-rehash-size *h*)
(hash-table-rehash-threshold *h*)
(time (loop for n below 1000000 do (setf (gethash n *h*) n)))
; giving me errors; push it and then reinstall ubuntu

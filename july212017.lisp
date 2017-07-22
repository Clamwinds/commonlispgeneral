;#S(structure-name1
 ;  type2 silver
  ; type1 gold)

(defun double1 (x) (* x 2))
                                        ; I want to represent a lexical closure as a list
#'double1

(defun example-program-listing ()
  `(this is
         (a (program
             (listing)))))

(defun example-function% () ; first try
  t)

(defun example-function%% () ; second try
  t)

(defun example-function () ; got it!
  t)
(defun example-function1 ()
  f)
(defun mkstr (&rest args)
  (with-output-to-string (s)
    (dolist (a args) (princ a s))))

(defun symb (&rest args) ; general way of making symbols
  (values (intern (apply #'mkstr args)))); symbols can be accessed by any random string and sometimes we want to automatically create symbols attached to strings
;What is the purpose of the symb function
                                        ;How do I import lisp files and use the defined shit?
; I need a list of lisp utilities that tells me what a function is doing like a list is being used and then it is being transformed 
                                        ; I need to make a few file-system commands or path-name commands and have it store as objects and i'll figure out the usage of it, but i can't figure it out for now
                                        ; I just need to have a complete environment, I also just need to write an ide or a perfect emacs lisp extension, maybe sort of like slime, I have to do this, and just have any set of computational functions I need, like mathematica but home-rolled to extend myself

                                        ; quotes ' don't do anything, they merely prevent the evaluation of the lisp forms, which might be s-expressions, I need to get good with lets and lambdas

(defun group (source n)
  (if (zerop n)   (error "zero  length"))
  (labels ((rec (source acc)
             (let ((rest (nthcdr n source)))
               (if (consp rest)
                   (rec rest (cons
                              (subseq source 0 n)
                              acc))
                   (nreverse
                    (cons source acc))))))
    (if source (rec source nil) nil)))
                                        ;what does this do? what does the labels function do?

((lambda (a b) (+ a (* b 3))) 4 5) ;-> 19
                                        ; so is the output of that 19 and then something must be done with that?
                                        ; ok it outputs ; literally 'returns' valuesad then you can do stuff with that value so that outputs to 19 but then i added 3 to it and then it evaled to 19
(+ 3 ((lambda (a b) (+ a (* b 3))) 4 5))


((lambda (a &optional (b 2)) (+ a (* b 3))) 4 5)
                                        ; i think optional parameters just initialize program values that are needed at the start, what ele does it do

(defun wager (&key ((secret password) nil) amount)
  (format nil "You ~A $~S"
          (if (eq password 'joe-sent-me) "win" "lose")
          amount));This is in the common lisp language reference where we are being introduced to program structure :author Ricky

(wager :amount 100) ; "you lose $100"
(wager :amount 100 'secret 'joe-sent-me)

(defun foo (&key radix (type 'integer))  ) ; the following two forms are equivilent
(defun foo (&key ((:radix radix)) ((:type type) 'integer)) )
                                        ;"The keyword parameter specifiers are, like all parameter specifers, effecivey processed from left to right. For each keyword parameter specifier, if there is an argument pair whos keyword ame matches that specifier's keyword name (that is, the names are eq) then the parameter variable for that specifier is bound to the second item of that argument pair"

((lambda (a &optional (b 2)) (+ a (* b 3))) 4)
((lambda (&optional (a 2 b) (c 3 d) &rest x) (list a b c d x)))
                                        ; x evaluates to nil as it hasn't been set yet, it seems &rest and &opptional are just for initializing parameters

((lambda (a b &key c d) (list a b c d)) 1 2) ; => (1 2 NIL NIL) (so the lambda expression outputs that object, a list with 4 elements)

((lambda (a b &key c d) (list a b c d)) 1 2 :c 6) ; => (1 2 6 NIL)

((lambda (a b &key c d) (list a b c d)) 1 2 :d 8) ; => (1 2 NIL 8)
((lambda (a b &key c d) (list a b c d)) :a 1 :d 8 :c 6)
((lambda (a b &key c d) (list a b c d)) :a :b :c :d)
;ok this was important all this stuff was found in guy steel's language reference

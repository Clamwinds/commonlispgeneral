                                        ; Ok today I will just be getting used to the lambda forms , and practice hella lets and hella lambda's

((lambda (a b &key c d) (list a b c d)) 1 2 :d 8)
((lambda (a &optional (b 2)) (+ a (* b 3))) 4)

(defun plus-mod (x y)
  (declare (type (unsigned-byte 32) x y))
  (mod (+ x y) (expt 2 32)))

(list (list #b101010 #o52 #x2A)
      (loop for fmt in `("~B" "~O" "~X")
            collect (format nil fmt 42)))
                                        ; 42, 42 ,42
                                        ; ((42 42 42) ("101010" "52" "2A"))
                                        ; We just need a native client that will replicate some git functionality that allows us to explore repos and have chat rooms over it and then comment the code and then export it, or have various guides that can be submit for free and the nit can have a dollar value of for it

; I view that on lisp source code and anssi common lisp source code that graham has as just a sign in what he considers valuable and a revelation of the near divinity of his superior properties, unfortuately he made it neither to nobility nor heaven, we will see about him - Ricky Kumar Saini 3074 Thurman Drive, 95148, Evergreen,, South-East Side, but east side nigga

;I need to study more lambda forms that have the &rest operator or argument, which is just the ame for he rest of the arguments I guess, oh I guess it's just like hava or C where you ahve to declare the input, here you don't even have to declare the type, you just assign it a value and the type is, of itself 

;Ok let's draw a common lisp function where if you give it an angle it will draw a stupid ass triangle on your screen in ascii and then it will write the Latex formula and drawing of it, so say the other angles 

;It seems, as usual, to understand what's going on you must study the historia of lisp or the set of examples (the history of it), so i'd have to compile or interpret his original code, and perhaps have a lisp that code somehow compile all of it, i guess the only way to grok it is the source code, which would lead me to the exact same thing conclusions or thing as i did toward language, study the people who invented he language or the invention as its highest genesis, which would be the 'language designers' so i guess steele's implementation but also it itself. and study the first examples of macros

(make-array '(8 8) :initial-element #\x)
;;;  #2A((#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x)
;(#\x #\x #\x #\x #\x #\x #\x #\x))
                                        ;Auto-saving...

;So I need a polynomial way of representing random variables, I need to code in a few random varaiblels and then I need to define an expectation operaor and i can try to figure shit out

(defun discriminant (a b c)
  (declare (number a b c))
  (- (* b b) (* 4 a )))
(discriminant 1 2 3)

; I need to get comfortable with packages, right now it just scares me to death

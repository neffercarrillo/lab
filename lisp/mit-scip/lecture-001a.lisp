;; example #1
(defun a () (* 5 5))

(* (a) (a))



;; example #2
(* 100.17 100.17)10034.028900000001

(defun square (x) (* x x))

(square 10)
(square 1001)
(square 5)
(+ (square 3) (square 4))



;; example #3
(defun average (x y) (/ (+ x y) 2))
(average 10 5)


(defun mean-square (x y)
    (average (square y)
             (square x)))

(mean-square 4 5)



;; example #4
(defun abs-val (x)
  (cond ((< x 0) (* -1 x))
        ((= x 0) 0)
        ((> x 0) x)))

(abs-val -5)



;; example 5
(defun square-root (x)

  (defun try-guess (guess x)
    (if (good-enough? guess x)
        guess
      (try-guess (improve-guess guess x) x)))

  (defun good-enough? (guess x)
    (< (abs (- (square guess) x))
       .001))

  (defun improve-guess (guess x)
    (avg guess (/ x guess)))

  (defun square (x)
    (* x x))

  (defun avg (x y)
    (/ (+ x y) 2))

  (try-guess 1 x))

(square-root 144)

-> this is "block structure". -> packaging procedures within another procedure. procedure-ception!







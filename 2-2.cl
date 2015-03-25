#!/usr/bin/clisp
;; HtDP 2.2
;; Michael Sarfati 2015

;; Primitive function
(defun area-of-disk (r)
  (* pi (* r r)))

(pprint `(the area of a disk of 6 is ,(area-of-disk 6)))

;; Composite function
(defun area-of-ring (outer inner)
  (- (area-of-disk outer)
  	 (area-of-disk inner)))

(pprint `(the area of a ring where outer 5 and inner is 7 is ,(area-of-ring 5 7)))

;; EX 2.2.2
;; US Dollar to Euro converter
(defun dollar->euro (dollar)
  (* dollar 0.91 ))

(equal (dollar->euro 8) 7.28)
(pprint `(assert if dollar=8 then euro=7.28 -> ,(equal (dollar->euro 8) 7.28)))

;; ex 2.2.3
;; Area of a triangle: 1/2 * base * height
(defun triangle (h b)
  (* 1/2 h b))

(pprint `(assert if base=4 and height=5 then area=10 -> ,(equal (triangle 4 5) 10)))

;; ex2.2.4
;; convert3 
(defun convert3 (a b c)
  (+ (* c 100) (* b 10) a))

(pprint `(assert that (1 2 3) returns 321 -> ,(equal (convert3 1 2 3) 321)))

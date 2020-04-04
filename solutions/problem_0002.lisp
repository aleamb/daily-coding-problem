
;;;; Daily Coding Problem 2

;;; Solution

;;; author: aleamb

;;; Problem:

;;; This problem was asked by Uber.

;;; Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

;;; For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

;;; Follow-up: what if you can't use division?



(defun solution-with-division-r (ol l)
  (cond ((null l) nil)
         (t (cons (/ (reduce #'* ol :initial-value 1) (car l)) (solution-with-division-r ol (cdr l))))))

(defun solution-with-division (l) (solution-with-division-r l l))

;; Solution without division

(defun solution-without-division (l)
  (mapcar #'(lambda (x) 
              (reduce #'(lambda (acc e)
                          (cond ((eq e x) acc) 
                                  (t (* acc e)))) l :initial-value 1)) l))


; Daily Coding Problem 1 

; Solution

; author: aleamb

; Problem:

; This problem was recently asked by Google.

; Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

; For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

; Bonus: Can you do this in one pass?

; Solution: for a given number K, check if exists another number on list that added to current in list, sum K


(defun solution (l k)
  (some #'(lambda (x)
            (not (eq (member (- k x) l) nil)))
        l))

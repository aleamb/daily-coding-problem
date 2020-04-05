
;;; Daily Coding Problem 3

;;; This problem was asked by Google.

;;; Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

;;; For example, given the following Node class

;;; ```python
;;; class Node:
;;;     def __init__(self, val, left=None, right=None):
;;;         self.val = val
;;;         self.left = left
;;;         self.right = right
;;; ```

;;; The following test should pass:

;;; ```python
;;; node = Node('root', Node('left', Node('left.left')), Node('right'))
;;; assert deserialize(serialize(node)).left.left.val == 'left.left'
;;; ```

;;; Solution:

;;; Tree are encoded as (val (left node) (right node)) None is ()
;;; Serialized string encoded by levels (deep) but without parenthesis, using '-' as null. This save to implement a parser.

;;; Example:

;;;                   A
;;;                  / \
;;;                 B   D
;;;                /
;;;               C

;;; Data structure in lisp: (A (B (C () ()) ()) (D () ()))
;;; String: A B C - - - D - -

(ql:quickload "split-sequence")

(defun serialize (tree) 
  (cond ((null tree) "-")
          (t (format nil "~A ~A ~A" (car tree) (serialize (cadr tree)) (serialize (caddr tree))))))

(defun _deserialize (str-closure)
  (let
    ((c (funcall str-closure)))
    (cond ((or (eq c nil) (equal c "") (equal c "-")) nil)
          (t (list (read-from-string c) (_deserialize str-closure) (_deserialize str-closure))))))


(defun deserialize (s)
  (_deserialize 
    (let 
      ((str (split-sequence:split-sequence #\Space s)) (c nil))
      (lambda () (cond 
                      ((not (null str)) (setf c (car str)) (setf str (cdr str)) c)
                      (t nil))))))

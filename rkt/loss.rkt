#lang racket/base

;; This module provides the procedure for computing the quadratic loss of a function.

(provide loss)

(require "utils.rkt")

;; Given a data point and a function, returns the quadratic loss.
(define (point-loss pt f)
  (let* ([expected (cdr pt)]
         [actual (f (car pt))]
         [error (abs (- actual expected))])
    (sqr error)))

;; Given a list of data points and a function, returns the quadratic loss.
(define (loss data f)
  (foldl (λ (pt acc) (+ acc (point-loss pt f))) 0.0 data))
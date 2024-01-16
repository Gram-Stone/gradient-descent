#lang racket/base

;; This module provides the numerical differentiation algorithm.

(provide differentiate)

(require math/flonum)

;; Given a function f, returns an estimator of the derivative of f at x.
(define (differentiate f)
  (λ (x) (let ([h (if (zero? x) 0.01 (* (sqrt epsilon.0) x))])
           (/ (- (f (+ x h)) (f x)) h))))
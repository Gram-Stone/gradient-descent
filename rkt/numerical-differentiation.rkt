#lang racket/base

;; This module provides the numerical differentiation algorithm.

(provide differentiate)

(require math/flonum)

;; Given a function f, returns an estimator of the derivative of f at x.
(define (differentiate f)
  (λ (x) (let ([h (if (fl= x 0.0) 0.01 (fl* (flsqrt epsilon.0) x))])
           (fl/ (fl- (f (fl+ x h)) (f x)) h))))
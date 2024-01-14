#lang racket/base

;; This module provides the numerical differentiation algorithm.

(provide differentiate)

;; Given a step h and a function f, returns an estimator of the derivative of f with step h.
(define (differentiate h f)
  (λ (x) (/ (- (f (+ x h)) (f x)) h)))
#lang racket/base

;; This module contains the model, procedures for computing the quadratic loss of points and functions, and provides the loss function.

(require "data.rkt")

(provide loss-function)

;; Defines the model.
(define (model a) (λ (x) (* a (sin x))))

;; Given a data point and a function, returns the quadratic loss.
(define (point-loss pt f)
  (define expected (cdr pt))
  (define actual (f (car pt)))
  (define error (abs(- actual expected)))

  (* error error))

;; Given training data and a function, returns the quadratic loss.
(define (loss data f)
  (foldl (λ (pt acc) (+ acc (point-loss pt f))) 0.0 data))

;; Given a weight, returns the quadratic loss of the function returned by the model on the given weight.
(define (loss-function weight)
  (loss data (model weight)))
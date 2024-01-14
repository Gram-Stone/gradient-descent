#lang racket

;; This module provides the gradient descent algorithm.

(require "loss.rkt"
         "numerical-differentiation.rkt")

(provide gradient-descent)

;; Given an initial weight, a number of iterations, and a learning rate, returns
;; a weight that minimizes the model's loss function given some training data.

(define (gradient-descent initial-weight iterations learning-rate)
  (define weight initial-weight)
  (define (iterate weight loss-function)
    ((differentiate learning-rate loss-function) weight))
  
  (for ([i (in-range iterations)])
    (set! weight (- weight (* learning-rate (iterate weight loss-function)))))
  weight)
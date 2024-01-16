#lang racket/base

;; This module provides the gradient descent algorithm.

(provide gradient-descent)

(require math/flonum
         "loss.rkt"
         "numerical-differentiation.rkt")

;; Given a model, some training data, an initial weight, a learning rate,
;; and a number of iterations, returns a weight that minimizes the model's
;; loss function.

(define (gradient-descent model data initial-weight learning-rate iterations)
  (let* ([loss-function (λ (weight) (loss data (model weight)))]
         [gradient (differentiate loss-function)])
    (for/fold ([weight (->fl initial-weight)])
              ([i (in-range iterations)])
      (fl- weight (fl* learning-rate (gradient weight))))))
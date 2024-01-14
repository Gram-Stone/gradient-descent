#lang racket/base

;; This module provides the synthetic training data.

(require math/distributions
         "utils.rkt")

(provide data)

;; Defines the amplitude of the sine function used to generate the training data.
(define amplitude 5)

;; Samples a pair from a given function f with random x-component between x-start and x-stop exclusive
;; and adds Gaussian noise with the given variance to the y-component of the sampled pair.
(define (sample-point x-start x-stop variance f)
  (define x (random-between x-start x-stop))
  (define noise (* (sample (normal-dist)) variance))
  (define y (+ (f x) noise))
  
  (cons x y))

;; Returns a list of pairs of length count, each returned from sample-point evaluated on x-start, x-stop, variance, and f.
(define (create-data count x-start x-stop variance f)
  (for/list ([in-range count])
    (sample-point x-start x-stop variance f)))

;; Creates some training data.
(define data (create-data 40 -6.0 6.0 5.0 (λ (x) (* amplitude (sin x)))))
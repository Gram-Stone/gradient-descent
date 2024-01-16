#lang racket/base

;; This module provides utility functions.

(provide flsqr
         random-between)

(require math/flonum)

;; Returns the square of x.
(define (flsqr x)
  (fl* x x))

;; Returns a random inexact number between x and y exclusive.
(define (random-between x y)
  (fl+ (fl* (flrandom (current-pseudo-random-generator)) (flabs (fl- x y))) x))
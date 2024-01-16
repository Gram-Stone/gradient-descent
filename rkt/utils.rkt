#lang racket/base

;; This module provides utility functions.

(provide random-between
         sqr)

;; Returns a random inexact number between x and y exclusive.
(define (random-between x y)
  (+ (* (random) (abs (- x y))) x))

;; Returns the square of x.
(define (sqr x)
  (* x x))
#lang racket

;; This module provides utility functions.

(provide random-between)

;; Returns a random inexact number between x and y exclusive.
(define (random-between x y)
  (+ (* (random) (abs (- x y))) x))
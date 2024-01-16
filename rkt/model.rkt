#lang racket/base

;; This module provides the model.

(provide model)

(define (model a) (λ (x) (* a (sin x))))
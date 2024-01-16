#lang racket/base

;; This module provides the model.

(provide model)

(require math/flonum)

(define (model a) (λ (x) (fl* a (flsin x))))
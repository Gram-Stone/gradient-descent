#lang racket/base

;; This module contains an example application of the gradient-descent procedure,
;; with an initial weight of 0, a learning rate of 0.01, and 20 iterations.

(require "data.rkt"
         "gradient-descent.rkt"
         "model.rkt")

(gradient-descent model data 0 0.01 20)
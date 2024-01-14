#lang racket

;; This module contains an example application of the gradient-descent procedure,
;; with an initial weight of 0, 20 iterations, and a learning rate of 0.01.

(require "gradient-descent.rkt")

(gradient-descent 0 20 0.01)
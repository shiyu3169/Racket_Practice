;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname text) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)

(define my-scene (empty-scene 300 300))
(define ( draw-string str)
  (place-image (text str 100 "blue") 150 150 my-scene))
(define (next str)
  (cond [(= (string-length str) 0) "done"]
        [else (substring str 0 (- (string-length str) 1))]))
                  
(big-bang "fundies 1"
          (on-tick next 0.5)
          (to-draw draw-string))
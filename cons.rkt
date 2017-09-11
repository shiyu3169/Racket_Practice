;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cons) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; LOS is one of:
;;empty
;;(cons String LOS)
(cons "Hi" empty)
empty
(cons "Hi" (cons "Bye" empty))

;;los-temp : LOs -> ?
#;(define (los-temp? a-los ...)
  (cond [(emopty? a-los) ...]
        [(cons? a-los) ...
         (dirst a-los)... (los-temp (rest a-los))...]))

;;lleng  LOS -> Number
;;add up the length of all of the strings
(define (leng a-los)
  (cond [(empty? a-los) 0]
        [(cons? a-los) 
         (+ (string-length (first a-los)) (leng (rest a-los)))]))

(check-expect (leng (cons "A" (cons "L" empty))) 2)
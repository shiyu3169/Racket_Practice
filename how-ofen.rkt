;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname how-ofen) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;(how-ofen? L1 "Sup") ->0
;(how-ofen? L1 "Hi") -> 1
;;how-ofen? : Los String -> Number
;;how often does the fiven string appear in the list
(define (how-ofen? a-los s)
  (cond [(empty? a-los) 0]
        [(cons? a-los)
         (cond [(string=? s (first a-los))
                (+ 1 (how-ofen? (rest a-los)s))]
               [else (how-ofen? (rest a-los)s)])]))
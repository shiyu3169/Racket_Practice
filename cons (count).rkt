;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |cons (count)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;a Los is one of
;empty
;(cons string Los)

#;(define (los-temp a-los)
  (cond [(empty? a-los)...]
        [(cons? a-los)... (first a-los)
                      ... (los-temp (rest a-los))]))

;;counting-string: LOS -> number
;;count the strings in a list of strings
(define (count-strings a-los)
  (cond [(empty? a-los)0]
        [(cons? a-los) (+ 1
                       (count-strings (rest a-los)))]))

(check-expect (count-strings (cons "Hi" (cons "Bye"
                                              (cons "Later"
                                                    empty)))) 3)
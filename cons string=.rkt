;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |cons string=|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define L1 (cons "Hi" (cons "Bye" (cons "Later" empty))))
;;in? LOS string-> boolean 
;;is the given string in the list 
(define (in? a-los s)
  (cond [(empty? a-los) false]
        [(string=? (first a-los)s)true]
        [else (in? (rest a-los) s)]))
(define (in?? a-los s)
  (cond [(empty? a-los) false]
        [else (or (string=? (first a-los) s)
              (in?? (rest a-los) s))]))
(check-expect (in?? L1 "Bye") true)
(check-expect (in?? L1 "By") false)
(check-expect (in?? empty "Bye") false)
              
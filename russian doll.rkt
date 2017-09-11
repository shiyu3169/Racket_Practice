;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |russian doll|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;A russian doll if one of
;;'solid
;;(make-doll RD)
(define-struct doll (contents))

;;rd-temp :RD -> ?
#;(define (rd-temp rd ...)
  (cond [(symbol? rd) ...]
        [(doll? rd) ... 
         (rd-temp (doll-contents rd)) ...]))

;;'solid -> 0
;; (make-doll 'solid) -> 1
;;(make-doll (make-doll 'solid)) -> 2

;;count-dolls: doll-> number
;;count how many layers the doll has
(define (count-dolls rd)
  (cond [(symbol? rd) 0]
        [(doll? rd)  
         (+ 1 (count-dolls (doll-contents rd))) ]))

(check-expect (count-dolls 'solid) 0)
(check-expect (count-dolls (make-doll 'solid)) 1)
(check-expect (count-dolls (make-doll
                            (make-doll 'solid))) 2)
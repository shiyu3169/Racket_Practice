;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |cons posn|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;A LOP is one of
;;empty
;;(cons (make-posn x y) LOP)

#;(define (lop-temp lop)
  (cond [(empty? lop)...]
        [else ...(first lop)
              ...(lop-emp (rest lop))]))

(define lop1 (cons (make-posn 3 5)
                  (cons (make-posn 10 15)
                        (cons (make-posn 30 58) empty))))

;;(shift-x lop1) -> 
(define lop2 (cons (make-posn 8 5)
                   (cons (make-posn 15 15)
                         (cons (make-posn 35 58) empty))))
;;shift-x :Lop--> Lop
;;shift the x-positions of each posn in the list by 5
(define (shift-x lop)
  (cond [(empty? lop) empty]
        [else (cons (shift-one-posn (first lop))
                    (shift-x (rest lop)))]))

;;shift-one-posn : Posn-> Posn
;;shift the x position of the posn by 5
(define (shift-one-posn p)
  (make-posn (+ 5 (posn-x p))
             (posn-y p)))


(check-expect (shift-x lop1) lop2)
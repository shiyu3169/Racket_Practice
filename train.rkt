;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname train) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;a train is one of
;;-commuter has these properties: #of cars,
;;                                #of passengets per car
;;                                boolean telling whether express
;;-amtrak has these properties: #of cars
;;                              #of passengers per car
;;                              destination
;;-subway has these prperties: #of car
;;                             #of passengers 
;;                             color

;;develop a function called hold-all? that given a train and
;#of passengers produce true if can contain the number
;a subway is a(make-subway number number string)
(define-struct subway (cars pass color))
;;a commuter is a (make-commuter number number ...)
(define-struct commuter (cars pass express?))
;a amtrak is ......)
(define-struct amtrak (cars pass dest))
(define t1(make-commuter 7 100 false))
(define t2 (make-amtrak 10 100 "DC"))
(define t3 (make-subway 8 50 'Orange))

#;(define (train-temp t)
  (cond [(commuter? t) ...(commuter-cars t)...
                       ...(comuter-pass t)...
                       ...(comuter-express? t)...]
        [(amtrak? t)...(amtrack-cars t)...
                    ...(amtrack-pass t)...
                    ...(amtrack-dest t)...]
        [(subway? t)...(subway-cars t)...
                    ...(subway-pass t)...
                    ...(subway-color t)...]))
;;hold-all?: Train Number -> Boolean
;;Given a train and a number retuurns whether the train
;;can hold all the people
(define (hold-all? t n)
  (cond 
    [(commuter? t) (>= (*(commuter-cars t)
                             (commuter-pass t)) n)]
    [(amtrak? t)(>=(*(amtrak-cars t) 
                         (amtrak-pass t))n)]
    [(subway? t)(>=(*(subway-cars t)
                     (subway-pass t))n)]))
(check-expect (hold-all? t1 800) false)
(check-expect (hold-all? t2 900) true)
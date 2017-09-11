;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname door) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; A DoorState is one of:
;; - "locked"
;; - "open"
;; - "closed"

;;next: Doorstate -> Doorstate
;;closes an open door
#;(define (next-temp d ...)
  (cond [(string=? d "locked") ...]
        [(string=? d "open")...]
        [(string=? d "closed") ...]))

(define (next d)
  (cond [(string=? d "locked") "locked"]
        [(string=? d "open") "open"]
        [(string=? d "closed") "closed"]
        [else ))

(check-expect (next "locked") "locked")
(check-expect (next "open") "open")
(check-expect (next "closed") "closed")
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |cons string-append|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;a LOS is one of
;;empty
;;(cons Customer LOS)

;;a Customer is a (make-customer String String)
(define-struct customer (title lname))
;;where title is one of "Dr" "Mr" "Ms"
;;and lame is the last name of Customer

(define C1 (make-customer "Dr" "No"))
(define C2 (make-customer "Mr" "Bond"))
(define C3 (make-customer "Ms" "Ryder"))

(define LOC1 (cons C1 (cons C2 (cons C3 empty))))

;;customer-tmep: customer-> ?
#;(define (customer-temp a-customer)
  (... (customer-title a-customer)...
       ...(customer-lname a-customer)...))

;;LOC-temp : LOC-> ?
#;(define (LOC-temp a-loc)
  (cond [(empty? a-loc)...]
        [else ...(first a-loc)
              ...(loc-temp (rest a-loc))]))
;;letter: LOC -> LOS
;;write letters to all of thhe customers in the list
(define (letter a-loc)
  (cond [(empty? a-loc) empty]
        [else (cons (letter-for-one (first a-loc))
                    (letter (rest a-loc)))]))
;;letter-for-one: Customer-? String
(define (letter-for-one a-customer)
  (string-append "Dear " (customer-title a-customer) " "
                 (customer-lname a-customer) ", Please come to my party."))

(check-expect (letter LOC1)
              (cons "Dear Dr No, Please come to my party."
                    (cons "Dear Mr Bond, Please come to my party."
                          (cons "Dear Ms Ryder, Please come to my party." empty))))


              
                   

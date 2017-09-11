;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname greeting) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;A customer is one of
;;potential (string)
;;male customer (make-mcust title lname)
(define-struct mcust (title lname))
;;female customer (make-fcust title lname)
(define-struct fcust (title lname))

;;"Sir or Madam"
;;(make-mcust "Mr." "Jones")
;;(make-fcust "Ms." "Smith")

#;(define (customer-temp a_customer ...)
  (cond [(string? a_customer) ...]
        [(mcust? a_customer) ... (m-title a_customer)...
                             ...(m-lname a_customer)...]
        [else ... (fcust-title a_customer)...
              ...(fcust-name a_customer)...]))
;;greeting cusomer->string
;;write a letter greeting for a customer
(define (greeting a_customer)
  (cond [(string? a_customer) (string-append "Dear " a_customer)]
        [(mcust? a_customer) (string-append "Dear " (mcust-title a_customer)" "
                             (mcust-lname a_customer))]
        [else (string-append "Dear " (fcust-title a_customer) " "
              (fcust-lname a_customer))]))
(check-expect (greeting (make-mcust "Mr." "Jones")) "Dear Mr. Jones")

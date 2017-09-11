;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |same director|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; a mivie is a (make-movie (String String Number))
(define-struct movie ( title director year))

(define m1 (make-movie "Usual Supects" "Speilberg" 1998))
(define m2 (make-movie "Toy Story" "Speilberg" 2005))
(define m3 (make-movie "Pulp fiction" "tarantino" 1994))

;;same-director?: movie movie -> boolean
;;checks to see if 2 movies have the same director
#;(define (same-director-temp m ...)
  (... (movie-title m)...
       (movie-director m)...
       (movie-year m)...))
(define (same-director? m n)
  (string=? (movie-director m)
            (movie-director n)))
(check-expect (same-director? m1 m2) true)
(check-expect (same-director? m2 m3) false)
  
  
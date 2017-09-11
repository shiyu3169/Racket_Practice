;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname zoo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;we want to keep track zoo animals and the zookeeper

;;An animal is a (make-animal name species)
(define-struct animal (name species))

;;a zookeeper is a (make-keeper animal1 animal2)
(define-struct keeper (a1 a2))

(define an1 (make-animal "tony" "tiger"))
(define an2 (make-animal "Ed" "horse"))
(define an3 (make-animal "Bugs" "rabbit"))

(define zk (make-keeper an2 an3))

(animal-name (keeper-a1 zk))
(animal-species (keeper-a2 zk))

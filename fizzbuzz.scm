(define nil ())
(define map (lambda (proc items) (if (null? items) nil (cons (proc (car items)) (map proc (cdr items))))))
(define enumerate-interval (lambda (low high) (if (> low high) nil (cons low (enumerate-interval (+ low 1) high)))))
(define fizzbuzz (lambda (num) (map (lambda (n) (cond ((and (= 0 (remainder n 3)) (= 0 (remainder n 5))) 'fizzbuzz) ((= 0 (remainder n 3)) 'fizz) ((= 0 (remainder n 5)) 'buzz) (else n))) (enumerate-interval 1 num))))

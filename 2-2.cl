;; HtDP 2.2
;;
(defun area-of-disk (r)
  (* pi (* r r)))

(princ `(the area of a disk of 6 is ,(area-of-disk 6)))

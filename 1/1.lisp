(defun one (measurments)
  (let ((result 0))
    (dotimes (i (1- (length measurments)))
      (if (> (nth (1+ i) measurments) (nth i measurments))
        (setq result (1+ result))))
    result))

(defun two (measurments)
  (let ((sliding-window-sums (list 0)))
    (dotimes (i (- (length measurments) 2))
      (nconc sliding-window-sums
             (list (+ (nth i measurments)
                   (nth (1+ i) measurments)
                   (nth (+ i 2) measurments)))))
    (pop sliding-window-sums)
    (one sliding-window-sums)))

(defun main (*posix-argv*)
  (let ((measurments (list 0)))
    (with-open-file (input "input.txt")
      (when input
        (loop for line = (read-line input nil)
          while line do
          (nconc measurments (list (read-from-string line))))))
    (pop measurments)
    (print (one measurments))
    (print (two measurments))))

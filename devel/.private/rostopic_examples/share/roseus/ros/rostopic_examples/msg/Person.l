;; Auto-generated. Do not edit!


(when (boundp 'rostopic_examples::Person)
  (if (not (find-package "ROSTOPIC_EXAMPLES"))
    (make-package "ROSTOPIC_EXAMPLES"))
  (shadow 'Person (find-package "ROSTOPIC_EXAMPLES")))
(unless (find-package "ROSTOPIC_EXAMPLES::PERSON")
  (make-package "ROSTOPIC_EXAMPLES::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass rostopic_examples::Person
  :super ros::object
  :slots (_name _age _sex ))

(defmethod rostopic_examples::Person
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:sex __sex) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _sex (string __sex))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; string _sex
    4 (length _sex)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; string _sex
       (write-long (length _sex) s) (princ _sex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _sex
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sex (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rostopic_examples::Person :md5sum-) "325fe16279a15ea654618c53abf5bb96")
(setf (get rostopic_examples::Person :datatype-) "rostopic_examples/Person")
(setf (get rostopic_examples::Person :definition-)
      "string name
uint8  age
string sex


")



(provide :rostopic_examples/Person "325fe16279a15ea654618c53abf5bb96")



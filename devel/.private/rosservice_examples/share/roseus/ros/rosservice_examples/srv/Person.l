;; Auto-generated. Do not edit!


(when (boundp 'rosservice_examples::Person)
  (if (not (find-package "ROSSERVICE_EXAMPLES"))
    (make-package "ROSSERVICE_EXAMPLES"))
  (shadow 'Person (find-package "ROSSERVICE_EXAMPLES")))
(unless (find-package "ROSSERVICE_EXAMPLES::PERSON")
  (make-package "ROSSERVICE_EXAMPLES::PERSON"))
(unless (find-package "ROSSERVICE_EXAMPLES::PERSONREQUEST")
  (make-package "ROSSERVICE_EXAMPLES::PERSONREQUEST"))
(unless (find-package "ROSSERVICE_EXAMPLES::PERSONRESPONSE")
  (make-package "ROSSERVICE_EXAMPLES::PERSONRESPONSE"))

(in-package "ROS")





(defclass rosservice_examples::PersonRequest
  :super ros::object
  :slots (_name _age _gender ))

(defmethod rosservice_examples::PersonRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:gender __gender) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _gender (string __gender))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:gender
   (&optional __gender)
   (if __gender (setq _gender __gender)) _gender)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; string _gender
    4 (length _gender)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; string _gender
       (write-long (length _gender) s) (princ _gender s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _gender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosservice_examples::PersonResponse
  :super ros::object
  :slots (_result ))

(defmethod rosservice_examples::PersonResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosservice_examples::Person
  :super ros::object
  :slots ())

(setf (get rosservice_examples::Person :md5sum-) "32cf62e277fd1435f7bfc80085d654cd")
(setf (get rosservice_examples::Person :datatype-) "rosservice_examples/Person")
(setf (get rosservice_examples::Person :request) rosservice_examples::PersonRequest)
(setf (get rosservice_examples::Person :response) rosservice_examples::PersonResponse)

(defmethod rosservice_examples::PersonRequest
  (:response () (instance rosservice_examples::PersonResponse :init)))

(setf (get rosservice_examples::PersonRequest :md5sum-) "32cf62e277fd1435f7bfc80085d654cd")
(setf (get rosservice_examples::PersonRequest :datatype-) "rosservice_examples/PersonRequest")
(setf (get rosservice_examples::PersonRequest :definition-)
      "string name
uint8  age
string gender

---
string result

")

(setf (get rosservice_examples::PersonResponse :md5sum-) "32cf62e277fd1435f7bfc80085d654cd")
(setf (get rosservice_examples::PersonResponse :datatype-) "rosservice_examples/PersonResponse")
(setf (get rosservice_examples::PersonResponse :definition-)
      "string name
uint8  age
string gender

---
string result

")



(provide :rosservice_examples/Person "32cf62e277fd1435f7bfc80085d654cd")



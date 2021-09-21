;; Auto-generated. Do not edit!


(when (boundp 'com_arm::Control_cellule)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'Control_cellule (find-package "COM_ARM")))
(unless (find-package "COM_ARM::CONTROL_CELLULE")
  (make-package "COM_ARM::CONTROL_CELLULE"))

(in-package "ROS")
;;//! \htmlinclude Control_cellule.msg.html


(defclass com_arm::Control_cellule
  :super ros::object
  :slots (_memoire _val ))

(defmethod com_arm::Control_cellule
  (:init
   (&key
    ((:memoire __memoire) "")
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _memoire (string __memoire))
   (setq _val (round __val))
   self)
  (:memoire
   (&optional __memoire)
   (if __memoire (setq _memoire __memoire)) _memoire)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; string _memoire
    4 (length _memoire)
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _memoire
       (write-long (length _memoire) s) (princ _memoire s)
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _memoire
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _memoire (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get com_arm::Control_cellule :md5sum-) "8355e28e75c846f16d2d77f7bdba3b7f")
(setf (get com_arm::Control_cellule :datatype-) "com_arm/Control_cellule")
(setf (get com_arm::Control_cellule :definition-)
      "string memoire
int32 val

")



(provide :com_arm/Control_cellule "8355e28e75c846f16d2d77f7bdba3b7f")



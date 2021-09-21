;; Auto-generated. Do not edit!


(when (boundp 'com_arm::Joint)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'Joint (find-package "COM_ARM")))
(unless (find-package "COM_ARM::JOINT")
  (make-package "COM_ARM::JOINT"))

(in-package "ROS")
;;//! \htmlinclude Joint.msg.html


(defclass com_arm::Joint
  :super ros::object
  :slots (_j1 _j2 _j3 _j4 _j5 _j6 ))

(defmethod com_arm::Joint
  (:init
   (&key
    ((:j1 __j1) 0.0)
    ((:j2 __j2) 0.0)
    ((:j3 __j3) 0.0)
    ((:j4 __j4) 0.0)
    ((:j5 __j5) 0.0)
    ((:j6 __j6) 0.0)
    )
   (send-super :init)
   (setq _j1 (float __j1))
   (setq _j2 (float __j2))
   (setq _j3 (float __j3))
   (setq _j4 (float __j4))
   (setq _j5 (float __j5))
   (setq _j6 (float __j6))
   self)
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:j2
   (&optional __j2)
   (if __j2 (setq _j2 __j2)) _j2)
  (:j3
   (&optional __j3)
   (if __j3 (setq _j3 __j3)) _j3)
  (:j4
   (&optional __j4)
   (if __j4 (setq _j4 __j4)) _j4)
  (:j5
   (&optional __j5)
   (if __j5 (setq _j5 __j5)) _j5)
  (:j6
   (&optional __j6)
   (if __j6 (setq _j6 __j6)) _j6)
  (:serialization-length
   ()
   (+
    ;; float32 _j1
    4
    ;; float32 _j2
    4
    ;; float32 _j3
    4
    ;; float32 _j4
    4
    ;; float32 _j5
    4
    ;; float32 _j6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _j1
       (sys::poke _j1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _j2
       (sys::poke _j2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _j3
       (sys::poke _j3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _j4
       (sys::poke _j4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _j5
       (sys::poke _j5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _j6
       (sys::poke _j6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _j1
     (setq _j1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _j2
     (setq _j2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _j3
     (setq _j3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _j4
     (setq _j4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _j5
     (setq _j5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _j6
     (setq _j6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get com_arm::Joint :md5sum-) "83f0a34e8774eaed3fc192eac05b2f24")
(setf (get com_arm::Joint :datatype-) "com_arm/Joint")
(setf (get com_arm::Joint :definition-)
      "float32 j1
float32 j2
float32 j3
float32 j4
float32 j5
float32 j6

")



(provide :com_arm/Joint "83f0a34e8774eaed3fc192eac05b2f24")



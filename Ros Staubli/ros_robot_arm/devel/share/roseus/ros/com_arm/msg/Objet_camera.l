;; Auto-generated. Do not edit!


(when (boundp 'com_arm::Objet_camera)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'Objet_camera (find-package "COM_ARM")))
(unless (find-package "COM_ARM::OBJET_CAMERA")
  (make-package "COM_ARM::OBJET_CAMERA"))

(in-package "ROS")
;;//! \htmlinclude Objet_camera.msg.html


(defclass com_arm::Objet_camera
  :super ros::object
  :slots (_go _x _y ))

(defmethod com_arm::Objet_camera
  (:init
   (&key
    ((:go __go) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _go __go)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:go
   (&optional __go)
   (if __go (setq _go __go)) _go)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; bool _go
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _go
       (if _go (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _go
     (setq _go (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get com_arm::Objet_camera :md5sum-) "1c992af9418b622ed983e7d58c6e43e4")
(setf (get com_arm::Objet_camera :datatype-) "com_arm/Objet_camera")
(setf (get com_arm::Objet_camera :definition-)
      "bool go
float32 x
float32 y

")



(provide :com_arm/Objet_camera "1c992af9418b622ed983e7d58c6e43e4")



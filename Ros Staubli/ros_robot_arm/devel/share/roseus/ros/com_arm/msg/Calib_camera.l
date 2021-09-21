;; Auto-generated. Do not edit!


(when (boundp 'com_arm::Calib_camera)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'Calib_camera (find-package "COM_ARM")))
(unless (find-package "COM_ARM::CALIB_CAMERA")
  (make-package "COM_ARM::CALIB_CAMERA"))

(in-package "ROS")
;;//! \htmlinclude Calib_camera.msg.html


(defclass com_arm::Calib_camera
  :super ros::object
  :slots (_point0 _point1 _point2 _point3 ))

(defmethod com_arm::Calib_camera
  (:init
   (&key
    ((:point0 __point0) nil)
    ((:point1 __point1) nil)
    ((:point2 __point2) nil)
    ((:point3 __point3) nil)
    )
   (send-super :init)
   (setq _point0 __point0)
   (setq _point1 __point1)
   (setq _point2 __point2)
   (setq _point3 __point3)
   self)
  (:point0
   (&optional __point0)
   (if __point0 (setq _point0 __point0)) _point0)
  (:point1
   (&optional __point1)
   (if __point1 (setq _point1 __point1)) _point1)
  (:point2
   (&optional __point2)
   (if __point2 (setq _point2 __point2)) _point2)
  (:point3
   (&optional __point3)
   (if __point3 (setq _point3 __point3)) _point3)
  (:serialization-length
   ()
   (+
    ;; bool _point0
    1
    ;; bool _point1
    1
    ;; bool _point2
    1
    ;; bool _point3
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _point0
       (if _point0 (write-byte -1 s) (write-byte 0 s))
     ;; bool _point1
       (if _point1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _point2
       (if _point2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _point3
       (if _point3 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _point0
     (setq _point0 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _point1
     (setq _point1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _point2
     (setq _point2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _point3
     (setq _point3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get com_arm::Calib_camera :md5sum-) "08b01bb680791f8362dea80ccacc5fb0")
(setf (get com_arm::Calib_camera :datatype-) "com_arm/Calib_camera")
(setf (get com_arm::Calib_camera :definition-)
      "bool point0
bool point1
bool point2
bool point3

")



(provide :com_arm/Calib_camera "08b01bb680791f8362dea80ccacc5fb0")



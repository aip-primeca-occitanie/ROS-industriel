;; Auto-generated. Do not edit!


(when (boundp 'com_arm::State)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'State (find-package "COM_ARM")))
(unless (find-package "COM_ARM::STATE")
  (make-package "COM_ARM::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass com_arm::State
  :super ros::object
  :slots (_isPowered _isCalibrated _workingMode _esStatus _moniteurSpeed _shoulder _elbow _wrist _isSettled _flag ))

(defmethod com_arm::State
  (:init
   (&key
    ((:isPowered __isPowered) 0)
    ((:isCalibrated __isCalibrated) 0)
    ((:workingMode __workingMode) 0)
    ((:esStatus __esStatus) 0)
    ((:moniteurSpeed __moniteurSpeed) 0)
    ((:shoulder __shoulder) 0)
    ((:elbow __elbow) 0)
    ((:wrist __wrist) 0)
    ((:isSettled __isSettled) 0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _isPowered (round __isPowered))
   (setq _isCalibrated (round __isCalibrated))
   (setq _workingMode (round __workingMode))
   (setq _esStatus (round __esStatus))
   (setq _moniteurSpeed (round __moniteurSpeed))
   (setq _shoulder (round __shoulder))
   (setq _elbow (round __elbow))
   (setq _wrist (round __wrist))
   (setq _isSettled (round __isSettled))
   (setq _flag (round __flag))
   self)
  (:isPowered
   (&optional __isPowered)
   (if __isPowered (setq _isPowered __isPowered)) _isPowered)
  (:isCalibrated
   (&optional __isCalibrated)
   (if __isCalibrated (setq _isCalibrated __isCalibrated)) _isCalibrated)
  (:workingMode
   (&optional __workingMode)
   (if __workingMode (setq _workingMode __workingMode)) _workingMode)
  (:esStatus
   (&optional __esStatus)
   (if __esStatus (setq _esStatus __esStatus)) _esStatus)
  (:moniteurSpeed
   (&optional __moniteurSpeed)
   (if __moniteurSpeed (setq _moniteurSpeed __moniteurSpeed)) _moniteurSpeed)
  (:shoulder
   (&optional __shoulder)
   (if __shoulder (setq _shoulder __shoulder)) _shoulder)
  (:elbow
   (&optional __elbow)
   (if __elbow (setq _elbow __elbow)) _elbow)
  (:wrist
   (&optional __wrist)
   (if __wrist (setq _wrist __wrist)) _wrist)
  (:isSettled
   (&optional __isSettled)
   (if __isSettled (setq _isSettled __isSettled)) _isSettled)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _isPowered
    4
    ;; int32 _isCalibrated
    4
    ;; int32 _workingMode
    4
    ;; int32 _esStatus
    4
    ;; int32 _moniteurSpeed
    4
    ;; int32 _shoulder
    4
    ;; int32 _elbow
    4
    ;; int32 _wrist
    4
    ;; int32 _isSettled
    4
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _isPowered
       (write-long _isPowered s)
     ;; int32 _isCalibrated
       (write-long _isCalibrated s)
     ;; int32 _workingMode
       (write-long _workingMode s)
     ;; int32 _esStatus
       (write-long _esStatus s)
     ;; int32 _moniteurSpeed
       (write-long _moniteurSpeed s)
     ;; int32 _shoulder
       (write-long _shoulder s)
     ;; int32 _elbow
       (write-long _elbow s)
     ;; int32 _wrist
       (write-long _wrist s)
     ;; int32 _isSettled
       (write-long _isSettled s)
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _isPowered
     (setq _isPowered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _isCalibrated
     (setq _isCalibrated (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _workingMode
     (setq _workingMode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _esStatus
     (setq _esStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _moniteurSpeed
     (setq _moniteurSpeed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _shoulder
     (setq _shoulder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _elbow
     (setq _elbow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wrist
     (setq _wrist (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _isSettled
     (setq _isSettled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get com_arm::State :md5sum-) "3442225a740fff286fb5123e1a12991a")
(setf (get com_arm::State :datatype-) "com_arm/State")
(setf (get com_arm::State :definition-)
      "int32 isPowered
int32 isCalibrated
int32 workingMode
int32 esStatus
int32 moniteurSpeed
int32 shoulder
int32 elbow
int32 wrist
int32 isSettled
int32 flag

")



(provide :com_arm/State "3442225a740fff286fb5123e1a12991a")



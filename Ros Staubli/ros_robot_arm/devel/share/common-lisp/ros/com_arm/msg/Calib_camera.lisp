; Auto-generated. Do not edit!


(cl:in-package com_arm-msg)


;//! \htmlinclude Calib_camera.msg.html

(cl:defclass <Calib_camera> (roslisp-msg-protocol:ros-message)
  ((point0
    :reader point0
    :initarg :point0
    :type cl:boolean
    :initform cl:nil)
   (point1
    :reader point1
    :initarg :point1
    :type cl:boolean
    :initform cl:nil)
   (point2
    :reader point2
    :initarg :point2
    :type cl:boolean
    :initform cl:nil)
   (point3
    :reader point3
    :initarg :point3
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Calib_camera (<Calib_camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calib_camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calib_camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com_arm-msg:<Calib_camera> is deprecated: use com_arm-msg:Calib_camera instead.")))

(cl:ensure-generic-function 'point0-val :lambda-list '(m))
(cl:defmethod point0-val ((m <Calib_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:point0-val is deprecated.  Use com_arm-msg:point0 instead.")
  (point0 m))

(cl:ensure-generic-function 'point1-val :lambda-list '(m))
(cl:defmethod point1-val ((m <Calib_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:point1-val is deprecated.  Use com_arm-msg:point1 instead.")
  (point1 m))

(cl:ensure-generic-function 'point2-val :lambda-list '(m))
(cl:defmethod point2-val ((m <Calib_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:point2-val is deprecated.  Use com_arm-msg:point2 instead.")
  (point2 m))

(cl:ensure-generic-function 'point3-val :lambda-list '(m))
(cl:defmethod point3-val ((m <Calib_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:point3-val is deprecated.  Use com_arm-msg:point3 instead.")
  (point3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calib_camera>) ostream)
  "Serializes a message object of type '<Calib_camera>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point0) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point3) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calib_camera>) istream)
  "Deserializes a message object of type '<Calib_camera>"
    (cl:setf (cl:slot-value msg 'point0) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'point1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'point2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'point3) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calib_camera>)))
  "Returns string type for a message object of type '<Calib_camera>"
  "com_arm/Calib_camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calib_camera)))
  "Returns string type for a message object of type 'Calib_camera"
  "com_arm/Calib_camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calib_camera>)))
  "Returns md5sum for a message object of type '<Calib_camera>"
  "08b01bb680791f8362dea80ccacc5fb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calib_camera)))
  "Returns md5sum for a message object of type 'Calib_camera"
  "08b01bb680791f8362dea80ccacc5fb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calib_camera>)))
  "Returns full string definition for message of type '<Calib_camera>"
  (cl:format cl:nil "bool point0~%bool point1~%bool point2~%bool point3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calib_camera)))
  "Returns full string definition for message of type 'Calib_camera"
  (cl:format cl:nil "bool point0~%bool point1~%bool point2~%bool point3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calib_camera>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calib_camera>))
  "Converts a ROS message object to a list"
  (cl:list 'Calib_camera
    (cl:cons ':point0 (point0 msg))
    (cl:cons ':point1 (point1 msg))
    (cl:cons ':point2 (point2 msg))
    (cl:cons ':point3 (point3 msg))
))

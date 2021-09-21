; Auto-generated. Do not edit!


(cl:in-package com_arm-msg)


;//! \htmlinclude Objet_camera.msg.html

(cl:defclass <Objet_camera> (roslisp-msg-protocol:ros-message)
  ((go
    :reader go
    :initarg :go
    :type cl:boolean
    :initform cl:nil)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Objet_camera (<Objet_camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Objet_camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Objet_camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com_arm-msg:<Objet_camera> is deprecated: use com_arm-msg:Objet_camera instead.")))

(cl:ensure-generic-function 'go-val :lambda-list '(m))
(cl:defmethod go-val ((m <Objet_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:go-val is deprecated.  Use com_arm-msg:go instead.")
  (go m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Objet_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:x-val is deprecated.  Use com_arm-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Objet_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:y-val is deprecated.  Use com_arm-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Objet_camera>) ostream)
  "Serializes a message object of type '<Objet_camera>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'go) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Objet_camera>) istream)
  "Deserializes a message object of type '<Objet_camera>"
    (cl:setf (cl:slot-value msg 'go) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Objet_camera>)))
  "Returns string type for a message object of type '<Objet_camera>"
  "com_arm/Objet_camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Objet_camera)))
  "Returns string type for a message object of type 'Objet_camera"
  "com_arm/Objet_camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Objet_camera>)))
  "Returns md5sum for a message object of type '<Objet_camera>"
  "1c992af9418b622ed983e7d58c6e43e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Objet_camera)))
  "Returns md5sum for a message object of type 'Objet_camera"
  "1c992af9418b622ed983e7d58c6e43e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Objet_camera>)))
  "Returns full string definition for message of type '<Objet_camera>"
  (cl:format cl:nil "bool go~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Objet_camera)))
  "Returns full string definition for message of type 'Objet_camera"
  (cl:format cl:nil "bool go~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Objet_camera>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Objet_camera>))
  "Converts a ROS message object to a list"
  (cl:list 'Objet_camera
    (cl:cons ':go (go msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))

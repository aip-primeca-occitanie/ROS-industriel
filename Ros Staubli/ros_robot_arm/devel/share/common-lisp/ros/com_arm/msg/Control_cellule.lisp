; Auto-generated. Do not edit!


(cl:in-package com_arm-msg)


;//! \htmlinclude Control_cellule.msg.html

(cl:defclass <Control_cellule> (roslisp-msg-protocol:ros-message)
  ((memoire
    :reader memoire
    :initarg :memoire
    :type cl:string
    :initform "")
   (val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0))
)

(cl:defclass Control_cellule (<Control_cellule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control_cellule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control_cellule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com_arm-msg:<Control_cellule> is deprecated: use com_arm-msg:Control_cellule instead.")))

(cl:ensure-generic-function 'memoire-val :lambda-list '(m))
(cl:defmethod memoire-val ((m <Control_cellule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:memoire-val is deprecated.  Use com_arm-msg:memoire instead.")
  (memoire m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <Control_cellule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:val-val is deprecated.  Use com_arm-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control_cellule>) ostream)
  "Serializes a message object of type '<Control_cellule>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'memoire))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'memoire))
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control_cellule>) istream)
  "Deserializes a message object of type '<Control_cellule>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'memoire) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'memoire) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control_cellule>)))
  "Returns string type for a message object of type '<Control_cellule>"
  "com_arm/Control_cellule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control_cellule)))
  "Returns string type for a message object of type 'Control_cellule"
  "com_arm/Control_cellule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control_cellule>)))
  "Returns md5sum for a message object of type '<Control_cellule>"
  "8355e28e75c846f16d2d77f7bdba3b7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control_cellule)))
  "Returns md5sum for a message object of type 'Control_cellule"
  "8355e28e75c846f16d2d77f7bdba3b7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control_cellule>)))
  "Returns full string definition for message of type '<Control_cellule>"
  (cl:format cl:nil "string memoire~%int32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control_cellule)))
  "Returns full string definition for message of type 'Control_cellule"
  (cl:format cl:nil "string memoire~%int32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control_cellule>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'memoire))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control_cellule>))
  "Converts a ROS message object to a list"
  (cl:list 'Control_cellule
    (cl:cons ':memoire (memoire msg))
    (cl:cons ':val (val msg))
))

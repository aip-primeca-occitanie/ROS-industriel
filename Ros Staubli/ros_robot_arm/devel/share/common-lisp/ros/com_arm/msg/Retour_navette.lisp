; Auto-generated. Do not edit!


(cl:in-package com_arm-msg)


;//! \htmlinclude Retour_navette.msg.html

(cl:defclass <Retour_navette> (roslisp-msg-protocol:ros-message)
  ((ST1
    :reader ST1
    :initarg :ST1
    :type cl:boolean
    :initform cl:nil)
   (ST2
    :reader ST2
    :initarg :ST2
    :type cl:boolean
    :initform cl:nil)
   (ST3
    :reader ST3
    :initarg :ST3
    :type cl:boolean
    :initform cl:nil)
   (ST4
    :reader ST4
    :initarg :ST4
    :type cl:boolean
    :initform cl:nil)
   (ST5
    :reader ST5
    :initarg :ST5
    :type cl:boolean
    :initform cl:nil)
   (ST20
    :reader ST20
    :initarg :ST20
    :type cl:boolean
    :initform cl:nil)
   (ST21
    :reader ST21
    :initarg :ST21
    :type cl:boolean
    :initform cl:nil)
   (ST22
    :reader ST22
    :initarg :ST22
    :type cl:boolean
    :initform cl:nil)
   (ST23
    :reader ST23
    :initarg :ST23
    :type cl:boolean
    :initform cl:nil)
   (ST24
    :reader ST24
    :initarg :ST24
    :type cl:boolean
    :initform cl:nil)
   (R1D
    :reader R1D
    :initarg :R1D
    :type cl:boolean
    :initform cl:nil)
   (R2D
    :reader R2D
    :initarg :R2D
    :type cl:boolean
    :initform cl:nil)
   (R11D
    :reader R11D
    :initarg :R11D
    :type cl:boolean
    :initform cl:nil)
   (R12D
    :reader R12D
    :initarg :R12D
    :type cl:boolean
    :initform cl:nil)
   (R1G
    :reader R1G
    :initarg :R1G
    :type cl:boolean
    :initform cl:nil)
   (R2G
    :reader R2G
    :initarg :R2G
    :type cl:boolean
    :initform cl:nil)
   (R11G
    :reader R11G
    :initarg :R11G
    :type cl:boolean
    :initform cl:nil)
   (R12G
    :reader R12G
    :initarg :R12G
    :type cl:boolean
    :initform cl:nil)
   (PI1
    :reader PI1
    :initarg :PI1
    :type cl:boolean
    :initform cl:nil)
   (PI2
    :reader PI2
    :initarg :PI2
    :type cl:boolean
    :initform cl:nil)
   (PI7
    :reader PI7
    :initarg :PI7
    :type cl:boolean
    :initform cl:nil)
   (PI8
    :reader PI8
    :initarg :PI8
    :type cl:boolean
    :initform cl:nil)
   (D1
    :reader D1
    :initarg :D1
    :type cl:boolean
    :initform cl:nil)
   (D2
    :reader D2
    :initarg :D2
    :type cl:boolean
    :initform cl:nil)
   (D11
    :reader D11
    :initarg :D11
    :type cl:boolean
    :initform cl:nil)
   (D12
    :reader D12
    :initarg :D12
    :type cl:boolean
    :initform cl:nil)
   (V1
    :reader V1
    :initarg :V1
    :type cl:boolean
    :initform cl:nil)
   (V2
    :reader V2
    :initarg :V2
    :type cl:boolean
    :initform cl:nil)
   (V11
    :reader V11
    :initarg :V11
    :type cl:boolean
    :initform cl:nil)
   (V12
    :reader V12
    :initarg :V12
    :type cl:boolean
    :initform cl:nil)
   (PS1
    :reader PS1
    :initarg :PS1
    :type cl:boolean
    :initform cl:nil)
   (PS2
    :reader PS2
    :initarg :PS2
    :type cl:boolean
    :initform cl:nil)
   (PS3
    :reader PS3
    :initarg :PS3
    :type cl:boolean
    :initform cl:nil)
   (PS4
    :reader PS4
    :initarg :PS4
    :type cl:boolean
    :initform cl:nil)
   (PS5
    :reader PS5
    :initarg :PS5
    :type cl:boolean
    :initform cl:nil)
   (PS20
    :reader PS20
    :initarg :PS20
    :type cl:boolean
    :initform cl:nil)
   (PS21
    :reader PS21
    :initarg :PS21
    :type cl:boolean
    :initform cl:nil)
   (PS22
    :reader PS22
    :initarg :PS22
    :type cl:boolean
    :initform cl:nil)
   (PS23
    :reader PS23
    :initarg :PS23
    :type cl:boolean
    :initform cl:nil)
   (PS24
    :reader PS24
    :initarg :PS24
    :type cl:boolean
    :initform cl:nil)
   (D1D
    :reader D1D
    :initarg :D1D
    :type cl:boolean
    :initform cl:nil)
   (D2D
    :reader D2D
    :initarg :D2D
    :type cl:boolean
    :initform cl:nil)
   (D11D
    :reader D11D
    :initarg :D11D
    :type cl:boolean
    :initform cl:nil)
   (D12D
    :reader D12D
    :initarg :D12D
    :type cl:boolean
    :initform cl:nil)
   (D1G
    :reader D1G
    :initarg :D1G
    :type cl:boolean
    :initform cl:nil)
   (D2G
    :reader D2G
    :initarg :D2G
    :type cl:boolean
    :initform cl:nil)
   (D11G
    :reader D11G
    :initarg :D11G
    :type cl:boolean
    :initform cl:nil)
   (D12G
    :reader D12G
    :initarg :D12G
    :type cl:boolean
    :initform cl:nil)
   (CPI1
    :reader CPI1
    :initarg :CPI1
    :type cl:boolean
    :initform cl:nil)
   (CPI2
    :reader CPI2
    :initarg :CPI2
    :type cl:boolean
    :initform cl:nil)
   (CPI7
    :reader CPI7
    :initarg :CPI7
    :type cl:boolean
    :initform cl:nil)
   (CPI8
    :reader CPI8
    :initarg :CPI8
    :type cl:boolean
    :initform cl:nil)
   (CP1
    :reader CP1
    :initarg :CP1
    :type cl:boolean
    :initform cl:nil)
   (CP2
    :reader CP2
    :initarg :CP2
    :type cl:boolean
    :initform cl:nil)
   (CP9
    :reader CP9
    :initarg :CP9
    :type cl:boolean
    :initform cl:nil)
   (CP10
    :reader CP10
    :initarg :CP10
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Retour_navette (<Retour_navette>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Retour_navette>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Retour_navette)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com_arm-msg:<Retour_navette> is deprecated: use com_arm-msg:Retour_navette instead.")))

(cl:ensure-generic-function 'ST1-val :lambda-list '(m))
(cl:defmethod ST1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST1-val is deprecated.  Use com_arm-msg:ST1 instead.")
  (ST1 m))

(cl:ensure-generic-function 'ST2-val :lambda-list '(m))
(cl:defmethod ST2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST2-val is deprecated.  Use com_arm-msg:ST2 instead.")
  (ST2 m))

(cl:ensure-generic-function 'ST3-val :lambda-list '(m))
(cl:defmethod ST3-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST3-val is deprecated.  Use com_arm-msg:ST3 instead.")
  (ST3 m))

(cl:ensure-generic-function 'ST4-val :lambda-list '(m))
(cl:defmethod ST4-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST4-val is deprecated.  Use com_arm-msg:ST4 instead.")
  (ST4 m))

(cl:ensure-generic-function 'ST5-val :lambda-list '(m))
(cl:defmethod ST5-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST5-val is deprecated.  Use com_arm-msg:ST5 instead.")
  (ST5 m))

(cl:ensure-generic-function 'ST20-val :lambda-list '(m))
(cl:defmethod ST20-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST20-val is deprecated.  Use com_arm-msg:ST20 instead.")
  (ST20 m))

(cl:ensure-generic-function 'ST21-val :lambda-list '(m))
(cl:defmethod ST21-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST21-val is deprecated.  Use com_arm-msg:ST21 instead.")
  (ST21 m))

(cl:ensure-generic-function 'ST22-val :lambda-list '(m))
(cl:defmethod ST22-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST22-val is deprecated.  Use com_arm-msg:ST22 instead.")
  (ST22 m))

(cl:ensure-generic-function 'ST23-val :lambda-list '(m))
(cl:defmethod ST23-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST23-val is deprecated.  Use com_arm-msg:ST23 instead.")
  (ST23 m))

(cl:ensure-generic-function 'ST24-val :lambda-list '(m))
(cl:defmethod ST24-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:ST24-val is deprecated.  Use com_arm-msg:ST24 instead.")
  (ST24 m))

(cl:ensure-generic-function 'R1D-val :lambda-list '(m))
(cl:defmethod R1D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R1D-val is deprecated.  Use com_arm-msg:R1D instead.")
  (R1D m))

(cl:ensure-generic-function 'R2D-val :lambda-list '(m))
(cl:defmethod R2D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R2D-val is deprecated.  Use com_arm-msg:R2D instead.")
  (R2D m))

(cl:ensure-generic-function 'R11D-val :lambda-list '(m))
(cl:defmethod R11D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R11D-val is deprecated.  Use com_arm-msg:R11D instead.")
  (R11D m))

(cl:ensure-generic-function 'R12D-val :lambda-list '(m))
(cl:defmethod R12D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R12D-val is deprecated.  Use com_arm-msg:R12D instead.")
  (R12D m))

(cl:ensure-generic-function 'R1G-val :lambda-list '(m))
(cl:defmethod R1G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R1G-val is deprecated.  Use com_arm-msg:R1G instead.")
  (R1G m))

(cl:ensure-generic-function 'R2G-val :lambda-list '(m))
(cl:defmethod R2G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R2G-val is deprecated.  Use com_arm-msg:R2G instead.")
  (R2G m))

(cl:ensure-generic-function 'R11G-val :lambda-list '(m))
(cl:defmethod R11G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R11G-val is deprecated.  Use com_arm-msg:R11G instead.")
  (R11G m))

(cl:ensure-generic-function 'R12G-val :lambda-list '(m))
(cl:defmethod R12G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:R12G-val is deprecated.  Use com_arm-msg:R12G instead.")
  (R12G m))

(cl:ensure-generic-function 'PI1-val :lambda-list '(m))
(cl:defmethod PI1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PI1-val is deprecated.  Use com_arm-msg:PI1 instead.")
  (PI1 m))

(cl:ensure-generic-function 'PI2-val :lambda-list '(m))
(cl:defmethod PI2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PI2-val is deprecated.  Use com_arm-msg:PI2 instead.")
  (PI2 m))

(cl:ensure-generic-function 'PI7-val :lambda-list '(m))
(cl:defmethod PI7-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PI7-val is deprecated.  Use com_arm-msg:PI7 instead.")
  (PI7 m))

(cl:ensure-generic-function 'PI8-val :lambda-list '(m))
(cl:defmethod PI8-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PI8-val is deprecated.  Use com_arm-msg:PI8 instead.")
  (PI8 m))

(cl:ensure-generic-function 'D1-val :lambda-list '(m))
(cl:defmethod D1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D1-val is deprecated.  Use com_arm-msg:D1 instead.")
  (D1 m))

(cl:ensure-generic-function 'D2-val :lambda-list '(m))
(cl:defmethod D2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D2-val is deprecated.  Use com_arm-msg:D2 instead.")
  (D2 m))

(cl:ensure-generic-function 'D11-val :lambda-list '(m))
(cl:defmethod D11-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D11-val is deprecated.  Use com_arm-msg:D11 instead.")
  (D11 m))

(cl:ensure-generic-function 'D12-val :lambda-list '(m))
(cl:defmethod D12-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D12-val is deprecated.  Use com_arm-msg:D12 instead.")
  (D12 m))

(cl:ensure-generic-function 'V1-val :lambda-list '(m))
(cl:defmethod V1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:V1-val is deprecated.  Use com_arm-msg:V1 instead.")
  (V1 m))

(cl:ensure-generic-function 'V2-val :lambda-list '(m))
(cl:defmethod V2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:V2-val is deprecated.  Use com_arm-msg:V2 instead.")
  (V2 m))

(cl:ensure-generic-function 'V11-val :lambda-list '(m))
(cl:defmethod V11-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:V11-val is deprecated.  Use com_arm-msg:V11 instead.")
  (V11 m))

(cl:ensure-generic-function 'V12-val :lambda-list '(m))
(cl:defmethod V12-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:V12-val is deprecated.  Use com_arm-msg:V12 instead.")
  (V12 m))

(cl:ensure-generic-function 'PS1-val :lambda-list '(m))
(cl:defmethod PS1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS1-val is deprecated.  Use com_arm-msg:PS1 instead.")
  (PS1 m))

(cl:ensure-generic-function 'PS2-val :lambda-list '(m))
(cl:defmethod PS2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS2-val is deprecated.  Use com_arm-msg:PS2 instead.")
  (PS2 m))

(cl:ensure-generic-function 'PS3-val :lambda-list '(m))
(cl:defmethod PS3-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS3-val is deprecated.  Use com_arm-msg:PS3 instead.")
  (PS3 m))

(cl:ensure-generic-function 'PS4-val :lambda-list '(m))
(cl:defmethod PS4-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS4-val is deprecated.  Use com_arm-msg:PS4 instead.")
  (PS4 m))

(cl:ensure-generic-function 'PS5-val :lambda-list '(m))
(cl:defmethod PS5-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS5-val is deprecated.  Use com_arm-msg:PS5 instead.")
  (PS5 m))

(cl:ensure-generic-function 'PS20-val :lambda-list '(m))
(cl:defmethod PS20-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS20-val is deprecated.  Use com_arm-msg:PS20 instead.")
  (PS20 m))

(cl:ensure-generic-function 'PS21-val :lambda-list '(m))
(cl:defmethod PS21-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS21-val is deprecated.  Use com_arm-msg:PS21 instead.")
  (PS21 m))

(cl:ensure-generic-function 'PS22-val :lambda-list '(m))
(cl:defmethod PS22-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS22-val is deprecated.  Use com_arm-msg:PS22 instead.")
  (PS22 m))

(cl:ensure-generic-function 'PS23-val :lambda-list '(m))
(cl:defmethod PS23-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS23-val is deprecated.  Use com_arm-msg:PS23 instead.")
  (PS23 m))

(cl:ensure-generic-function 'PS24-val :lambda-list '(m))
(cl:defmethod PS24-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:PS24-val is deprecated.  Use com_arm-msg:PS24 instead.")
  (PS24 m))

(cl:ensure-generic-function 'D1D-val :lambda-list '(m))
(cl:defmethod D1D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D1D-val is deprecated.  Use com_arm-msg:D1D instead.")
  (D1D m))

(cl:ensure-generic-function 'D2D-val :lambda-list '(m))
(cl:defmethod D2D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D2D-val is deprecated.  Use com_arm-msg:D2D instead.")
  (D2D m))

(cl:ensure-generic-function 'D11D-val :lambda-list '(m))
(cl:defmethod D11D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D11D-val is deprecated.  Use com_arm-msg:D11D instead.")
  (D11D m))

(cl:ensure-generic-function 'D12D-val :lambda-list '(m))
(cl:defmethod D12D-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D12D-val is deprecated.  Use com_arm-msg:D12D instead.")
  (D12D m))

(cl:ensure-generic-function 'D1G-val :lambda-list '(m))
(cl:defmethod D1G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D1G-val is deprecated.  Use com_arm-msg:D1G instead.")
  (D1G m))

(cl:ensure-generic-function 'D2G-val :lambda-list '(m))
(cl:defmethod D2G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D2G-val is deprecated.  Use com_arm-msg:D2G instead.")
  (D2G m))

(cl:ensure-generic-function 'D11G-val :lambda-list '(m))
(cl:defmethod D11G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D11G-val is deprecated.  Use com_arm-msg:D11G instead.")
  (D11G m))

(cl:ensure-generic-function 'D12G-val :lambda-list '(m))
(cl:defmethod D12G-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:D12G-val is deprecated.  Use com_arm-msg:D12G instead.")
  (D12G m))

(cl:ensure-generic-function 'CPI1-val :lambda-list '(m))
(cl:defmethod CPI1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CPI1-val is deprecated.  Use com_arm-msg:CPI1 instead.")
  (CPI1 m))

(cl:ensure-generic-function 'CPI2-val :lambda-list '(m))
(cl:defmethod CPI2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CPI2-val is deprecated.  Use com_arm-msg:CPI2 instead.")
  (CPI2 m))

(cl:ensure-generic-function 'CPI7-val :lambda-list '(m))
(cl:defmethod CPI7-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CPI7-val is deprecated.  Use com_arm-msg:CPI7 instead.")
  (CPI7 m))

(cl:ensure-generic-function 'CPI8-val :lambda-list '(m))
(cl:defmethod CPI8-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CPI8-val is deprecated.  Use com_arm-msg:CPI8 instead.")
  (CPI8 m))

(cl:ensure-generic-function 'CP1-val :lambda-list '(m))
(cl:defmethod CP1-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CP1-val is deprecated.  Use com_arm-msg:CP1 instead.")
  (CP1 m))

(cl:ensure-generic-function 'CP2-val :lambda-list '(m))
(cl:defmethod CP2-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CP2-val is deprecated.  Use com_arm-msg:CP2 instead.")
  (CP2 m))

(cl:ensure-generic-function 'CP9-val :lambda-list '(m))
(cl:defmethod CP9-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CP9-val is deprecated.  Use com_arm-msg:CP9 instead.")
  (CP9 m))

(cl:ensure-generic-function 'CP10-val :lambda-list '(m))
(cl:defmethod CP10-val ((m <Retour_navette>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com_arm-msg:CP10-val is deprecated.  Use com_arm-msg:CP10 instead.")
  (CP10 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Retour_navette>) ostream)
  "Serializes a message object of type '<Retour_navette>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST4) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST20) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST21) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST22) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST23) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ST24) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R1D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R2D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R11D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R12D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R1G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R2G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R11G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R12G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PI1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PI2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PI7) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PI8) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D11) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D12) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'V1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'V2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'V11) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'V12) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS4) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS20) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS21) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS22) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS23) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PS24) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D1D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D2D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D11D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D12D) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D1G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D2G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D11G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'D12G) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CPI1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CPI2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CPI7) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CPI8) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CP1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CP2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CP9) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CP10) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Retour_navette>) istream)
  "Deserializes a message object of type '<Retour_navette>"
    (cl:setf (cl:slot-value msg 'ST1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST20) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST21) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST22) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST23) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ST24) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R1D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R2D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R11D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R12D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R1G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R2G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R11G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R12G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PI1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PI2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PI7) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PI8) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D11) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D12) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'V1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'V2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'V11) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'V12) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS20) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS21) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS22) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS23) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PS24) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D1D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D2D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D11D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D12D) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D1G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D2G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D11G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'D12G) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CPI1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CPI2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CPI7) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CPI8) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CP1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CP2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CP9) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CP10) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Retour_navette>)))
  "Returns string type for a message object of type '<Retour_navette>"
  "com_arm/Retour_navette")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Retour_navette)))
  "Returns string type for a message object of type 'Retour_navette"
  "com_arm/Retour_navette")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Retour_navette>)))
  "Returns md5sum for a message object of type '<Retour_navette>"
  "eac7c5db26c2bd4eb38c8c1df4b60f0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Retour_navette)))
  "Returns md5sum for a message object of type 'Retour_navette"
  "eac7c5db26c2bd4eb38c8c1df4b60f0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Retour_navette>)))
  "Returns full string definition for message of type '<Retour_navette>"
  (cl:format cl:nil "bool ST1~%bool ST2~%bool ST3~%bool ST4~%bool ST5~%bool ST20~%bool ST21~%bool ST22~%bool ST23~%bool ST24~%bool R1D~%bool R2D~%bool R11D~%bool R12D~%bool R1G~%bool R2G~%bool R11G~%bool R12G~%bool PI1~%bool PI2~%bool PI7~%bool PI8~%bool D1~%bool D2~%bool D11~%bool D12~%bool V1~%bool V2~%bool V11~%bool V12~%bool PS1~%bool PS2~%bool PS3~%bool PS4~%bool PS5~%bool PS20~%bool PS21~%bool PS22~%bool PS23~%bool PS24~%bool D1D~%bool D2D~%bool D11D~%bool D12D~%bool D1G~%bool D2G~%bool D11G~%bool D12G~%bool CPI1~%bool CPI2~%bool CPI7~%bool CPI8~%bool CP1~%bool CP2~%bool CP9~%bool CP10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Retour_navette)))
  "Returns full string definition for message of type 'Retour_navette"
  (cl:format cl:nil "bool ST1~%bool ST2~%bool ST3~%bool ST4~%bool ST5~%bool ST20~%bool ST21~%bool ST22~%bool ST23~%bool ST24~%bool R1D~%bool R2D~%bool R11D~%bool R12D~%bool R1G~%bool R2G~%bool R11G~%bool R12G~%bool PI1~%bool PI2~%bool PI7~%bool PI8~%bool D1~%bool D2~%bool D11~%bool D12~%bool V1~%bool V2~%bool V11~%bool V12~%bool PS1~%bool PS2~%bool PS3~%bool PS4~%bool PS5~%bool PS20~%bool PS21~%bool PS22~%bool PS23~%bool PS24~%bool D1D~%bool D2D~%bool D11D~%bool D12D~%bool D1G~%bool D2G~%bool D11G~%bool D12G~%bool CPI1~%bool CPI2~%bool CPI7~%bool CPI8~%bool CP1~%bool CP2~%bool CP9~%bool CP10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Retour_navette>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Retour_navette>))
  "Converts a ROS message object to a list"
  (cl:list 'Retour_navette
    (cl:cons ':ST1 (ST1 msg))
    (cl:cons ':ST2 (ST2 msg))
    (cl:cons ':ST3 (ST3 msg))
    (cl:cons ':ST4 (ST4 msg))
    (cl:cons ':ST5 (ST5 msg))
    (cl:cons ':ST20 (ST20 msg))
    (cl:cons ':ST21 (ST21 msg))
    (cl:cons ':ST22 (ST22 msg))
    (cl:cons ':ST23 (ST23 msg))
    (cl:cons ':ST24 (ST24 msg))
    (cl:cons ':R1D (R1D msg))
    (cl:cons ':R2D (R2D msg))
    (cl:cons ':R11D (R11D msg))
    (cl:cons ':R12D (R12D msg))
    (cl:cons ':R1G (R1G msg))
    (cl:cons ':R2G (R2G msg))
    (cl:cons ':R11G (R11G msg))
    (cl:cons ':R12G (R12G msg))
    (cl:cons ':PI1 (PI1 msg))
    (cl:cons ':PI2 (PI2 msg))
    (cl:cons ':PI7 (PI7 msg))
    (cl:cons ':PI8 (PI8 msg))
    (cl:cons ':D1 (D1 msg))
    (cl:cons ':D2 (D2 msg))
    (cl:cons ':D11 (D11 msg))
    (cl:cons ':D12 (D12 msg))
    (cl:cons ':V1 (V1 msg))
    (cl:cons ':V2 (V2 msg))
    (cl:cons ':V11 (V11 msg))
    (cl:cons ':V12 (V12 msg))
    (cl:cons ':PS1 (PS1 msg))
    (cl:cons ':PS2 (PS2 msg))
    (cl:cons ':PS3 (PS3 msg))
    (cl:cons ':PS4 (PS4 msg))
    (cl:cons ':PS5 (PS5 msg))
    (cl:cons ':PS20 (PS20 msg))
    (cl:cons ':PS21 (PS21 msg))
    (cl:cons ':PS22 (PS22 msg))
    (cl:cons ':PS23 (PS23 msg))
    (cl:cons ':PS24 (PS24 msg))
    (cl:cons ':D1D (D1D msg))
    (cl:cons ':D2D (D2D msg))
    (cl:cons ':D11D (D11D msg))
    (cl:cons ':D12D (D12D msg))
    (cl:cons ':D1G (D1G msg))
    (cl:cons ':D2G (D2G msg))
    (cl:cons ':D11G (D11G msg))
    (cl:cons ':D12G (D12G msg))
    (cl:cons ':CPI1 (CPI1 msg))
    (cl:cons ':CPI2 (CPI2 msg))
    (cl:cons ':CPI7 (CPI7 msg))
    (cl:cons ':CPI8 (CPI8 msg))
    (cl:cons ':CP1 (CP1 msg))
    (cl:cons ':CP2 (CP2 msg))
    (cl:cons ':CP9 (CP9 msg))
    (cl:cons ':CP10 (CP10 msg))
))

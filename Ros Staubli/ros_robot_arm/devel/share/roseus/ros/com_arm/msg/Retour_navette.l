;; Auto-generated. Do not edit!


(when (boundp 'com_arm::Retour_navette)
  (if (not (find-package "COM_ARM"))
    (make-package "COM_ARM"))
  (shadow 'Retour_navette (find-package "COM_ARM")))
(unless (find-package "COM_ARM::RETOUR_NAVETTE")
  (make-package "COM_ARM::RETOUR_NAVETTE"))

(in-package "ROS")
;;//! \htmlinclude Retour_navette.msg.html


(defclass com_arm::Retour_navette
  :super ros::object
  :slots (_ST1 _ST2 _ST3 _ST4 _ST5 _ST20 _ST21 _ST22 _ST23 _ST24 _R1D _R2D _R11D _R12D _R1G _R2G _R11G _R12G _PI1 _PI2 _PI7 _PI8 _D1 _D2 _D11 _D12 _V1 _V2 _V11 _V12 _PS1 _PS2 _PS3 _PS4 _PS5 _PS20 _PS21 _PS22 _PS23 _PS24 _D1D _D2D _D11D _D12D _D1G _D2G _D11G _D12G _CPI1 _CPI2 _CPI7 _CPI8 _CP1 _CP2 _CP9 _CP10 ))

(defmethod com_arm::Retour_navette
  (:init
   (&key
    ((:ST1 __ST1) nil)
    ((:ST2 __ST2) nil)
    ((:ST3 __ST3) nil)
    ((:ST4 __ST4) nil)
    ((:ST5 __ST5) nil)
    ((:ST20 __ST20) nil)
    ((:ST21 __ST21) nil)
    ((:ST22 __ST22) nil)
    ((:ST23 __ST23) nil)
    ((:ST24 __ST24) nil)
    ((:R1D __R1D) nil)
    ((:R2D __R2D) nil)
    ((:R11D __R11D) nil)
    ((:R12D __R12D) nil)
    ((:R1G __R1G) nil)
    ((:R2G __R2G) nil)
    ((:R11G __R11G) nil)
    ((:R12G __R12G) nil)
    ((:PI1 __PI1) nil)
    ((:PI2 __PI2) nil)
    ((:PI7 __PI7) nil)
    ((:PI8 __PI8) nil)
    ((:D1 __D1) nil)
    ((:D2 __D2) nil)
    ((:D11 __D11) nil)
    ((:D12 __D12) nil)
    ((:V1 __V1) nil)
    ((:V2 __V2) nil)
    ((:V11 __V11) nil)
    ((:V12 __V12) nil)
    ((:PS1 __PS1) nil)
    ((:PS2 __PS2) nil)
    ((:PS3 __PS3) nil)
    ((:PS4 __PS4) nil)
    ((:PS5 __PS5) nil)
    ((:PS20 __PS20) nil)
    ((:PS21 __PS21) nil)
    ((:PS22 __PS22) nil)
    ((:PS23 __PS23) nil)
    ((:PS24 __PS24) nil)
    ((:D1D __D1D) nil)
    ((:D2D __D2D) nil)
    ((:D11D __D11D) nil)
    ((:D12D __D12D) nil)
    ((:D1G __D1G) nil)
    ((:D2G __D2G) nil)
    ((:D11G __D11G) nil)
    ((:D12G __D12G) nil)
    ((:CPI1 __CPI1) nil)
    ((:CPI2 __CPI2) nil)
    ((:CPI7 __CPI7) nil)
    ((:CPI8 __CPI8) nil)
    ((:CP1 __CP1) nil)
    ((:CP2 __CP2) nil)
    ((:CP9 __CP9) nil)
    ((:CP10 __CP10) nil)
    )
   (send-super :init)
   (setq _ST1 __ST1)
   (setq _ST2 __ST2)
   (setq _ST3 __ST3)
   (setq _ST4 __ST4)
   (setq _ST5 __ST5)
   (setq _ST20 __ST20)
   (setq _ST21 __ST21)
   (setq _ST22 __ST22)
   (setq _ST23 __ST23)
   (setq _ST24 __ST24)
   (setq _R1D __R1D)
   (setq _R2D __R2D)
   (setq _R11D __R11D)
   (setq _R12D __R12D)
   (setq _R1G __R1G)
   (setq _R2G __R2G)
   (setq _R11G __R11G)
   (setq _R12G __R12G)
   (setq _PI1 __PI1)
   (setq _PI2 __PI2)
   (setq _PI7 __PI7)
   (setq _PI8 __PI8)
   (setq _D1 __D1)
   (setq _D2 __D2)
   (setq _D11 __D11)
   (setq _D12 __D12)
   (setq _V1 __V1)
   (setq _V2 __V2)
   (setq _V11 __V11)
   (setq _V12 __V12)
   (setq _PS1 __PS1)
   (setq _PS2 __PS2)
   (setq _PS3 __PS3)
   (setq _PS4 __PS4)
   (setq _PS5 __PS5)
   (setq _PS20 __PS20)
   (setq _PS21 __PS21)
   (setq _PS22 __PS22)
   (setq _PS23 __PS23)
   (setq _PS24 __PS24)
   (setq _D1D __D1D)
   (setq _D2D __D2D)
   (setq _D11D __D11D)
   (setq _D12D __D12D)
   (setq _D1G __D1G)
   (setq _D2G __D2G)
   (setq _D11G __D11G)
   (setq _D12G __D12G)
   (setq _CPI1 __CPI1)
   (setq _CPI2 __CPI2)
   (setq _CPI7 __CPI7)
   (setq _CPI8 __CPI8)
   (setq _CP1 __CP1)
   (setq _CP2 __CP2)
   (setq _CP9 __CP9)
   (setq _CP10 __CP10)
   self)
  (:ST1
   (&optional __ST1)
   (if __ST1 (setq _ST1 __ST1)) _ST1)
  (:ST2
   (&optional __ST2)
   (if __ST2 (setq _ST2 __ST2)) _ST2)
  (:ST3
   (&optional __ST3)
   (if __ST3 (setq _ST3 __ST3)) _ST3)
  (:ST4
   (&optional __ST4)
   (if __ST4 (setq _ST4 __ST4)) _ST4)
  (:ST5
   (&optional __ST5)
   (if __ST5 (setq _ST5 __ST5)) _ST5)
  (:ST20
   (&optional __ST20)
   (if __ST20 (setq _ST20 __ST20)) _ST20)
  (:ST21
   (&optional __ST21)
   (if __ST21 (setq _ST21 __ST21)) _ST21)
  (:ST22
   (&optional __ST22)
   (if __ST22 (setq _ST22 __ST22)) _ST22)
  (:ST23
   (&optional __ST23)
   (if __ST23 (setq _ST23 __ST23)) _ST23)
  (:ST24
   (&optional __ST24)
   (if __ST24 (setq _ST24 __ST24)) _ST24)
  (:R1D
   (&optional __R1D)
   (if __R1D (setq _R1D __R1D)) _R1D)
  (:R2D
   (&optional __R2D)
   (if __R2D (setq _R2D __R2D)) _R2D)
  (:R11D
   (&optional __R11D)
   (if __R11D (setq _R11D __R11D)) _R11D)
  (:R12D
   (&optional __R12D)
   (if __R12D (setq _R12D __R12D)) _R12D)
  (:R1G
   (&optional __R1G)
   (if __R1G (setq _R1G __R1G)) _R1G)
  (:R2G
   (&optional __R2G)
   (if __R2G (setq _R2G __R2G)) _R2G)
  (:R11G
   (&optional __R11G)
   (if __R11G (setq _R11G __R11G)) _R11G)
  (:R12G
   (&optional __R12G)
   (if __R12G (setq _R12G __R12G)) _R12G)
  (:PI1
   (&optional __PI1)
   (if __PI1 (setq _PI1 __PI1)) _PI1)
  (:PI2
   (&optional __PI2)
   (if __PI2 (setq _PI2 __PI2)) _PI2)
  (:PI7
   (&optional __PI7)
   (if __PI7 (setq _PI7 __PI7)) _PI7)
  (:PI8
   (&optional __PI8)
   (if __PI8 (setq _PI8 __PI8)) _PI8)
  (:D1
   (&optional __D1)
   (if __D1 (setq _D1 __D1)) _D1)
  (:D2
   (&optional __D2)
   (if __D2 (setq _D2 __D2)) _D2)
  (:D11
   (&optional __D11)
   (if __D11 (setq _D11 __D11)) _D11)
  (:D12
   (&optional __D12)
   (if __D12 (setq _D12 __D12)) _D12)
  (:V1
   (&optional __V1)
   (if __V1 (setq _V1 __V1)) _V1)
  (:V2
   (&optional __V2)
   (if __V2 (setq _V2 __V2)) _V2)
  (:V11
   (&optional __V11)
   (if __V11 (setq _V11 __V11)) _V11)
  (:V12
   (&optional __V12)
   (if __V12 (setq _V12 __V12)) _V12)
  (:PS1
   (&optional __PS1)
   (if __PS1 (setq _PS1 __PS1)) _PS1)
  (:PS2
   (&optional __PS2)
   (if __PS2 (setq _PS2 __PS2)) _PS2)
  (:PS3
   (&optional __PS3)
   (if __PS3 (setq _PS3 __PS3)) _PS3)
  (:PS4
   (&optional __PS4)
   (if __PS4 (setq _PS4 __PS4)) _PS4)
  (:PS5
   (&optional __PS5)
   (if __PS5 (setq _PS5 __PS5)) _PS5)
  (:PS20
   (&optional __PS20)
   (if __PS20 (setq _PS20 __PS20)) _PS20)
  (:PS21
   (&optional __PS21)
   (if __PS21 (setq _PS21 __PS21)) _PS21)
  (:PS22
   (&optional __PS22)
   (if __PS22 (setq _PS22 __PS22)) _PS22)
  (:PS23
   (&optional __PS23)
   (if __PS23 (setq _PS23 __PS23)) _PS23)
  (:PS24
   (&optional __PS24)
   (if __PS24 (setq _PS24 __PS24)) _PS24)
  (:D1D
   (&optional __D1D)
   (if __D1D (setq _D1D __D1D)) _D1D)
  (:D2D
   (&optional __D2D)
   (if __D2D (setq _D2D __D2D)) _D2D)
  (:D11D
   (&optional __D11D)
   (if __D11D (setq _D11D __D11D)) _D11D)
  (:D12D
   (&optional __D12D)
   (if __D12D (setq _D12D __D12D)) _D12D)
  (:D1G
   (&optional __D1G)
   (if __D1G (setq _D1G __D1G)) _D1G)
  (:D2G
   (&optional __D2G)
   (if __D2G (setq _D2G __D2G)) _D2G)
  (:D11G
   (&optional __D11G)
   (if __D11G (setq _D11G __D11G)) _D11G)
  (:D12G
   (&optional __D12G)
   (if __D12G (setq _D12G __D12G)) _D12G)
  (:CPI1
   (&optional __CPI1)
   (if __CPI1 (setq _CPI1 __CPI1)) _CPI1)
  (:CPI2
   (&optional __CPI2)
   (if __CPI2 (setq _CPI2 __CPI2)) _CPI2)
  (:CPI7
   (&optional __CPI7)
   (if __CPI7 (setq _CPI7 __CPI7)) _CPI7)
  (:CPI8
   (&optional __CPI8)
   (if __CPI8 (setq _CPI8 __CPI8)) _CPI8)
  (:CP1
   (&optional __CP1)
   (if __CP1 (setq _CP1 __CP1)) _CP1)
  (:CP2
   (&optional __CP2)
   (if __CP2 (setq _CP2 __CP2)) _CP2)
  (:CP9
   (&optional __CP9)
   (if __CP9 (setq _CP9 __CP9)) _CP9)
  (:CP10
   (&optional __CP10)
   (if __CP10 (setq _CP10 __CP10)) _CP10)
  (:serialization-length
   ()
   (+
    ;; bool _ST1
    1
    ;; bool _ST2
    1
    ;; bool _ST3
    1
    ;; bool _ST4
    1
    ;; bool _ST5
    1
    ;; bool _ST20
    1
    ;; bool _ST21
    1
    ;; bool _ST22
    1
    ;; bool _ST23
    1
    ;; bool _ST24
    1
    ;; bool _R1D
    1
    ;; bool _R2D
    1
    ;; bool _R11D
    1
    ;; bool _R12D
    1
    ;; bool _R1G
    1
    ;; bool _R2G
    1
    ;; bool _R11G
    1
    ;; bool _R12G
    1
    ;; bool _PI1
    1
    ;; bool _PI2
    1
    ;; bool _PI7
    1
    ;; bool _PI8
    1
    ;; bool _D1
    1
    ;; bool _D2
    1
    ;; bool _D11
    1
    ;; bool _D12
    1
    ;; bool _V1
    1
    ;; bool _V2
    1
    ;; bool _V11
    1
    ;; bool _V12
    1
    ;; bool _PS1
    1
    ;; bool _PS2
    1
    ;; bool _PS3
    1
    ;; bool _PS4
    1
    ;; bool _PS5
    1
    ;; bool _PS20
    1
    ;; bool _PS21
    1
    ;; bool _PS22
    1
    ;; bool _PS23
    1
    ;; bool _PS24
    1
    ;; bool _D1D
    1
    ;; bool _D2D
    1
    ;; bool _D11D
    1
    ;; bool _D12D
    1
    ;; bool _D1G
    1
    ;; bool _D2G
    1
    ;; bool _D11G
    1
    ;; bool _D12G
    1
    ;; bool _CPI1
    1
    ;; bool _CPI2
    1
    ;; bool _CPI7
    1
    ;; bool _CPI8
    1
    ;; bool _CP1
    1
    ;; bool _CP2
    1
    ;; bool _CP9
    1
    ;; bool _CP10
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ST1
       (if _ST1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST2
       (if _ST2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST3
       (if _ST3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST4
       (if _ST4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST5
       (if _ST5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST20
       (if _ST20 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST21
       (if _ST21 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST22
       (if _ST22 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST23
       (if _ST23 (write-byte -1 s) (write-byte 0 s))
     ;; bool _ST24
       (if _ST24 (write-byte -1 s) (write-byte 0 s))
     ;; bool _R1D
       (if _R1D (write-byte -1 s) (write-byte 0 s))
     ;; bool _R2D
       (if _R2D (write-byte -1 s) (write-byte 0 s))
     ;; bool _R11D
       (if _R11D (write-byte -1 s) (write-byte 0 s))
     ;; bool _R12D
       (if _R12D (write-byte -1 s) (write-byte 0 s))
     ;; bool _R1G
       (if _R1G (write-byte -1 s) (write-byte 0 s))
     ;; bool _R2G
       (if _R2G (write-byte -1 s) (write-byte 0 s))
     ;; bool _R11G
       (if _R11G (write-byte -1 s) (write-byte 0 s))
     ;; bool _R12G
       (if _R12G (write-byte -1 s) (write-byte 0 s))
     ;; bool _PI1
       (if _PI1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PI2
       (if _PI2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PI7
       (if _PI7 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PI8
       (if _PI8 (write-byte -1 s) (write-byte 0 s))
     ;; bool _D1
       (if _D1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _D2
       (if _D2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _D11
       (if _D11 (write-byte -1 s) (write-byte 0 s))
     ;; bool _D12
       (if _D12 (write-byte -1 s) (write-byte 0 s))
     ;; bool _V1
       (if _V1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _V2
       (if _V2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _V11
       (if _V11 (write-byte -1 s) (write-byte 0 s))
     ;; bool _V12
       (if _V12 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS1
       (if _PS1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS2
       (if _PS2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS3
       (if _PS3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS4
       (if _PS4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS5
       (if _PS5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS20
       (if _PS20 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS21
       (if _PS21 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS22
       (if _PS22 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS23
       (if _PS23 (write-byte -1 s) (write-byte 0 s))
     ;; bool _PS24
       (if _PS24 (write-byte -1 s) (write-byte 0 s))
     ;; bool _D1D
       (if _D1D (write-byte -1 s) (write-byte 0 s))
     ;; bool _D2D
       (if _D2D (write-byte -1 s) (write-byte 0 s))
     ;; bool _D11D
       (if _D11D (write-byte -1 s) (write-byte 0 s))
     ;; bool _D12D
       (if _D12D (write-byte -1 s) (write-byte 0 s))
     ;; bool _D1G
       (if _D1G (write-byte -1 s) (write-byte 0 s))
     ;; bool _D2G
       (if _D2G (write-byte -1 s) (write-byte 0 s))
     ;; bool _D11G
       (if _D11G (write-byte -1 s) (write-byte 0 s))
     ;; bool _D12G
       (if _D12G (write-byte -1 s) (write-byte 0 s))
     ;; bool _CPI1
       (if _CPI1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CPI2
       (if _CPI2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CPI7
       (if _CPI7 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CPI8
       (if _CPI8 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CP1
       (if _CP1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CP2
       (if _CP2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CP9
       (if _CP9 (write-byte -1 s) (write-byte 0 s))
     ;; bool _CP10
       (if _CP10 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ST1
     (setq _ST1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST2
     (setq _ST2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST3
     (setq _ST3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST4
     (setq _ST4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST5
     (setq _ST5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST20
     (setq _ST20 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST21
     (setq _ST21 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST22
     (setq _ST22 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST23
     (setq _ST23 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ST24
     (setq _ST24 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R1D
     (setq _R1D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R2D
     (setq _R2D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R11D
     (setq _R11D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R12D
     (setq _R12D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R1G
     (setq _R1G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R2G
     (setq _R2G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R11G
     (setq _R11G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R12G
     (setq _R12G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PI1
     (setq _PI1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PI2
     (setq _PI2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PI7
     (setq _PI7 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PI8
     (setq _PI8 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D1
     (setq _D1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D2
     (setq _D2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D11
     (setq _D11 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D12
     (setq _D12 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _V1
     (setq _V1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _V2
     (setq _V2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _V11
     (setq _V11 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _V12
     (setq _V12 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS1
     (setq _PS1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS2
     (setq _PS2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS3
     (setq _PS3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS4
     (setq _PS4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS5
     (setq _PS5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS20
     (setq _PS20 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS21
     (setq _PS21 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS22
     (setq _PS22 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS23
     (setq _PS23 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PS24
     (setq _PS24 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D1D
     (setq _D1D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D2D
     (setq _D2D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D11D
     (setq _D11D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D12D
     (setq _D12D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D1G
     (setq _D1G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D2G
     (setq _D2G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D11G
     (setq _D11G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _D12G
     (setq _D12G (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CPI1
     (setq _CPI1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CPI2
     (setq _CPI2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CPI7
     (setq _CPI7 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CPI8
     (setq _CPI8 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CP1
     (setq _CP1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CP2
     (setq _CP2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CP9
     (setq _CP9 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CP10
     (setq _CP10 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get com_arm::Retour_navette :md5sum-) "eac7c5db26c2bd4eb38c8c1df4b60f0f")
(setf (get com_arm::Retour_navette :datatype-) "com_arm/Retour_navette")
(setf (get com_arm::Retour_navette :definition-)
      "bool ST1
bool ST2
bool ST3
bool ST4
bool ST5
bool ST20
bool ST21
bool ST22
bool ST23
bool ST24
bool R1D
bool R2D
bool R11D
bool R12D
bool R1G
bool R2G
bool R11G
bool R12G
bool PI1
bool PI2
bool PI7
bool PI8
bool D1
bool D2
bool D11
bool D12
bool V1
bool V2
bool V11
bool V12
bool PS1
bool PS2
bool PS3
bool PS4
bool PS5
bool PS20
bool PS21
bool PS22
bool PS23
bool PS24
bool D1D
bool D2D
bool D11D
bool D12D
bool D1G
bool D2G
bool D11G
bool D12G
bool CPI1
bool CPI2
bool CPI7
bool CPI8
bool CP1
bool CP2
bool CP9
bool CP10

")



(provide :com_arm/Retour_navette "eac7c5db26c2bd4eb38c8c1df4b60f0f")



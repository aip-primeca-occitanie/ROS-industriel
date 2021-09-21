
(cl:in-package :asdf)

(defsystem "com_arm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Retour_cellule" :depends-on ("_package_Retour_cellule"))
    (:file "_package_Retour_cellule" :depends-on ("_package"))
  ))
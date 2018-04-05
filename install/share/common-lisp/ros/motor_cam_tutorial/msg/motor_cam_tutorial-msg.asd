
(cl:in-package :asdf)

(defsystem "motor_cam_tutorial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mot_cmd" :depends-on ("_package_mot_cmd"))
    (:file "_package_mot_cmd" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "picture_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "image_cmd" :depends-on ("_package_image_cmd"))
    (:file "_package_image_cmd" :depends-on ("_package"))
  ))
; Auto-generated. Do not edit!


(cl:in-package motor_cam_tutorial-msg)


;//! \htmlinclude mot_cmd.msg.html

(cl:defclass <mot_cmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:boolean
    :initform cl:nil)
   (mot_pos
    :reader mot_pos
    :initarg :mot_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass mot_cmd (<mot_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mot_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mot_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_cam_tutorial-msg:<mot_cmd> is deprecated: use motor_cam_tutorial-msg:mot_cmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <mot_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-msg:cmd-val is deprecated.  Use motor_cam_tutorial-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'mot_pos-val :lambda-list '(m))
(cl:defmethod mot_pos-val ((m <mot_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-msg:mot_pos-val is deprecated.  Use motor_cam_tutorial-msg:mot_pos instead.")
  (mot_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mot_cmd>) ostream)
  "Serializes a message object of type '<mot_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cmd) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mot_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mot_cmd>) istream)
  "Deserializes a message object of type '<mot_cmd>"
    (cl:setf (cl:slot-value msg 'cmd) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mot_pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mot_cmd>)))
  "Returns string type for a message object of type '<mot_cmd>"
  "motor_cam_tutorial/mot_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mot_cmd)))
  "Returns string type for a message object of type 'mot_cmd"
  "motor_cam_tutorial/mot_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mot_cmd>)))
  "Returns md5sum for a message object of type '<mot_cmd>"
  "738fdb4e3563fa17b955dd65d43eb19c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mot_cmd)))
  "Returns md5sum for a message object of type 'mot_cmd"
  "738fdb4e3563fa17b955dd65d43eb19c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mot_cmd>)))
  "Returns full string definition for message of type '<mot_cmd>"
  (cl:format cl:nil "bool cmd~%float32 mot_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mot_cmd)))
  "Returns full string definition for message of type 'mot_cmd"
  (cl:format cl:nil "bool cmd~%float32 mot_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mot_cmd>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mot_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'mot_cmd
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':mot_pos (mot_pos msg))
))

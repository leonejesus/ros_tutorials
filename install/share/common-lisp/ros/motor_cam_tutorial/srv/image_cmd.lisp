; Auto-generated. Do not edit!


(cl:in-package motor_cam_tutorial-srv)


;//! \htmlinclude image_cmd-request.msg.html

(cl:defclass <image_cmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:boolean
    :initform cl:nil)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass image_cmd-request (<image_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_cam_tutorial-srv:<image_cmd-request> is deprecated: use motor_cam_tutorial-srv:image_cmd-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <image_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-srv:cmd-val is deprecated.  Use motor_cam_tutorial-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <image_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-srv:path-val is deprecated.  Use motor_cam_tutorial-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <image_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-srv:angle-val is deprecated.  Use motor_cam_tutorial-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image_cmd-request>) ostream)
  "Serializes a message object of type '<image_cmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cmd) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image_cmd-request>) istream)
  "Deserializes a message object of type '<image_cmd-request>"
    (cl:setf (cl:slot-value msg 'cmd) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image_cmd-request>)))
  "Returns string type for a service object of type '<image_cmd-request>"
  "motor_cam_tutorial/image_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_cmd-request)))
  "Returns string type for a service object of type 'image_cmd-request"
  "motor_cam_tutorial/image_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image_cmd-request>)))
  "Returns md5sum for a message object of type '<image_cmd-request>"
  "7d1acd9e38bea5a59992565b097ec10a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image_cmd-request)))
  "Returns md5sum for a message object of type 'image_cmd-request"
  "7d1acd9e38bea5a59992565b097ec10a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image_cmd-request>)))
  "Returns full string definition for message of type '<image_cmd-request>"
  (cl:format cl:nil "bool cmd~%string path~%float32  angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image_cmd-request)))
  "Returns full string definition for message of type 'image_cmd-request"
  (cl:format cl:nil "bool cmd~%string path~%float32  angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image_cmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'path))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'image_cmd-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':path (path msg))
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude image_cmd-response.msg.html

(cl:defclass <image_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass image_cmd-response (<image_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_cam_tutorial-srv:<image_cmd-response> is deprecated: use motor_cam_tutorial-srv:image_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <image_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_cam_tutorial-srv:result-val is deprecated.  Use motor_cam_tutorial-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image_cmd-response>) ostream)
  "Serializes a message object of type '<image_cmd-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image_cmd-response>) istream)
  "Deserializes a message object of type '<image_cmd-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image_cmd-response>)))
  "Returns string type for a service object of type '<image_cmd-response>"
  "motor_cam_tutorial/image_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_cmd-response)))
  "Returns string type for a service object of type 'image_cmd-response"
  "motor_cam_tutorial/image_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image_cmd-response>)))
  "Returns md5sum for a message object of type '<image_cmd-response>"
  "7d1acd9e38bea5a59992565b097ec10a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image_cmd-response)))
  "Returns md5sum for a message object of type 'image_cmd-response"
  "7d1acd9e38bea5a59992565b097ec10a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image_cmd-response>)))
  "Returns full string definition for message of type '<image_cmd-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image_cmd-response)))
  "Returns full string definition for message of type 'image_cmd-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image_cmd-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'image_cmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'image_cmd)))
  'image_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'image_cmd)))
  'image_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_cmd)))
  "Returns string type for a service object of type '<image_cmd>"
  "motor_cam_tutorial/image_cmd")
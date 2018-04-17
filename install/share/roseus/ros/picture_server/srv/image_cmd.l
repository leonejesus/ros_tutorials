;; Auto-generated. Do not edit!


(when (boundp 'picture_server::image_cmd)
  (if (not (find-package "PICTURE_SERVER"))
    (make-package "PICTURE_SERVER"))
  (shadow 'image_cmd (find-package "PICTURE_SERVER")))
(unless (find-package "PICTURE_SERVER::IMAGE_CMD")
  (make-package "PICTURE_SERVER::IMAGE_CMD"))
(unless (find-package "PICTURE_SERVER::IMAGE_CMDREQUEST")
  (make-package "PICTURE_SERVER::IMAGE_CMDREQUEST"))
(unless (find-package "PICTURE_SERVER::IMAGE_CMDRESPONSE")
  (make-package "PICTURE_SERVER::IMAGE_CMDRESPONSE"))

(in-package "ROS")





(defclass picture_server::image_cmdRequest
  :super ros::object
  :slots (_cmd _path _num_name ))

(defmethod picture_server::image_cmdRequest
  (:init
   (&key
    ((:cmd __cmd) nil)
    ((:path __path) "")
    ((:num_name __num_name) "")
    )
   (send-super :init)
   (setq _cmd __cmd)
   (setq _path (string __path))
   (setq _num_name (string __num_name))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:num_name
   (&optional __num_name)
   (if __num_name (setq _num_name __num_name)) _num_name)
  (:serialization-length
   ()
   (+
    ;; bool _cmd
    1
    ;; string _path
    4 (length _path)
    ;; string _num_name
    4 (length _num_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd
       (if _cmd (write-byte -1 s) (write-byte 0 s))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; string _num_name
       (write-long (length _num_name) s) (princ _num_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd
     (setq _cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _num_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _num_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass picture_server::image_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod picture_server::image_cmdResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass picture_server::image_cmd
  :super ros::object
  :slots ())

(setf (get picture_server::image_cmd :md5sum-) "df4c5dd78fc80b838f57d02309153014")
(setf (get picture_server::image_cmd :datatype-) "picture_server/image_cmd")
(setf (get picture_server::image_cmd :request) picture_server::image_cmdRequest)
(setf (get picture_server::image_cmd :response) picture_server::image_cmdResponse)

(defmethod picture_server::image_cmdRequest
  (:response () (instance picture_server::image_cmdResponse :init)))

(setf (get picture_server::image_cmdRequest :md5sum-) "df4c5dd78fc80b838f57d02309153014")
(setf (get picture_server::image_cmdRequest :datatype-) "picture_server/image_cmdRequest")
(setf (get picture_server::image_cmdRequest :definition-)
      "bool cmd
string path
string num_name
---
int32 result

")

(setf (get picture_server::image_cmdResponse :md5sum-) "df4c5dd78fc80b838f57d02309153014")
(setf (get picture_server::image_cmdResponse :datatype-) "picture_server/image_cmdResponse")
(setf (get picture_server::image_cmdResponse :definition-)
      "bool cmd
string path
string num_name
---
int32 result

")



(provide :picture_server/image_cmd "df4c5dd78fc80b838f57d02309153014")



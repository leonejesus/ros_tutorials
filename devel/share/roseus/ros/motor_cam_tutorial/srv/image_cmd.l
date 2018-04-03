;; Auto-generated. Do not edit!


(when (boundp 'motor_cam_tutorial::image_cmd)
  (if (not (find-package "MOTOR_CAM_TUTORIAL"))
    (make-package "MOTOR_CAM_TUTORIAL"))
  (shadow 'image_cmd (find-package "MOTOR_CAM_TUTORIAL")))
(unless (find-package "MOTOR_CAM_TUTORIAL::IMAGE_CMD")
  (make-package "MOTOR_CAM_TUTORIAL::IMAGE_CMD"))
(unless (find-package "MOTOR_CAM_TUTORIAL::IMAGE_CMDREQUEST")
  (make-package "MOTOR_CAM_TUTORIAL::IMAGE_CMDREQUEST"))
(unless (find-package "MOTOR_CAM_TUTORIAL::IMAGE_CMDRESPONSE")
  (make-package "MOTOR_CAM_TUTORIAL::IMAGE_CMDRESPONSE"))

(in-package "ROS")





(defclass motor_cam_tutorial::image_cmdRequest
  :super ros::object
  :slots (_cmd _path _angle ))

(defmethod motor_cam_tutorial::image_cmdRequest
  (:init
   (&key
    ((:cmd __cmd) nil)
    ((:path __path) "")
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _cmd __cmd)
   (setq _path (string __path))
   (setq _angle (float __angle))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; bool _cmd
    1
    ;; string _path
    4 (length _path)
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd
       (if _cmd (write-byte -1 s) (write-byte 0 s))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd
     (setq _cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass motor_cam_tutorial::image_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod motor_cam_tutorial::image_cmdResponse
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

(defclass motor_cam_tutorial::image_cmd
  :super ros::object
  :slots ())

(setf (get motor_cam_tutorial::image_cmd :md5sum-) "7d1acd9e38bea5a59992565b097ec10a")
(setf (get motor_cam_tutorial::image_cmd :datatype-) "motor_cam_tutorial/image_cmd")
(setf (get motor_cam_tutorial::image_cmd :request) motor_cam_tutorial::image_cmdRequest)
(setf (get motor_cam_tutorial::image_cmd :response) motor_cam_tutorial::image_cmdResponse)

(defmethod motor_cam_tutorial::image_cmdRequest
  (:response () (instance motor_cam_tutorial::image_cmdResponse :init)))

(setf (get motor_cam_tutorial::image_cmdRequest :md5sum-) "7d1acd9e38bea5a59992565b097ec10a")
(setf (get motor_cam_tutorial::image_cmdRequest :datatype-) "motor_cam_tutorial/image_cmdRequest")
(setf (get motor_cam_tutorial::image_cmdRequest :definition-)
      "bool cmd
string path
float32  angle
---
int32 result

")

(setf (get motor_cam_tutorial::image_cmdResponse :md5sum-) "7d1acd9e38bea5a59992565b097ec10a")
(setf (get motor_cam_tutorial::image_cmdResponse :datatype-) "motor_cam_tutorial/image_cmdResponse")
(setf (get motor_cam_tutorial::image_cmdResponse :definition-)
      "bool cmd
string path
float32  angle
---
int32 result

")



(provide :motor_cam_tutorial/image_cmd "7d1acd9e38bea5a59992565b097ec10a")



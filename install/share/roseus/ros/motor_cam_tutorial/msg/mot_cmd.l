;; Auto-generated. Do not edit!


(when (boundp 'motor_cam_tutorial::mot_cmd)
  (if (not (find-package "MOTOR_CAM_TUTORIAL"))
    (make-package "MOTOR_CAM_TUTORIAL"))
  (shadow 'mot_cmd (find-package "MOTOR_CAM_TUTORIAL")))
(unless (find-package "MOTOR_CAM_TUTORIAL::MOT_CMD")
  (make-package "MOTOR_CAM_TUTORIAL::MOT_CMD"))

(in-package "ROS")
;;//! \htmlinclude mot_cmd.msg.html


(defclass motor_cam_tutorial::mot_cmd
  :super ros::object
  :slots (_cmd _mot_pos ))

(defmethod motor_cam_tutorial::mot_cmd
  (:init
   (&key
    ((:cmd __cmd) nil)
    ((:mot_pos __mot_pos) 0.0)
    )
   (send-super :init)
   (setq _cmd __cmd)
   (setq _mot_pos (float __mot_pos))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:mot_pos
   (&optional __mot_pos)
   (if __mot_pos (setq _mot_pos __mot_pos)) _mot_pos)
  (:serialization-length
   ()
   (+
    ;; bool _cmd
    1
    ;; float32 _mot_pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd
       (if _cmd (write-byte -1 s) (write-byte 0 s))
     ;; float32 _mot_pos
       (sys::poke _mot_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd
     (setq _cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _mot_pos
     (setq _mot_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motor_cam_tutorial::mot_cmd :md5sum-) "738fdb4e3563fa17b955dd65d43eb19c")
(setf (get motor_cam_tutorial::mot_cmd :datatype-) "motor_cam_tutorial/mot_cmd")
(setf (get motor_cam_tutorial::mot_cmd :definition-)
      "bool cmd
float32 mot_pos

")



(provide :motor_cam_tutorial/mot_cmd "738fdb4e3563fa17b955dd65d43eb19c")



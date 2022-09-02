;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::JointCommand)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'JointCommand (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::JOINTCOMMAND")
  (make-package "LIMB_CORE_MSGS::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass limb_core_msgs::JointCommand
  :super ros::object
  :slots (_header _mode _name _command ))

(defmethod limb_core_msgs::JointCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:command __command) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _name __name)
   (setq _command __command)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _mode
    4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _command
    (* 8    (length _command)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _mode
       (write-long _mode s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _command
     (write-long (length _command) s)
     (dotimes (i (length _command))
       (sys::poke (elt _command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get limb_core_msgs::JointCommand :md5sum-) "94e37e6b9eb645a6cbc62a54515f279c")
(setf (get limb_core_msgs::JointCommand :datatype-) "limb_core_msgs/JointCommand")
(setf (get limb_core_msgs::JointCommand :definition-)
      "Header header

#// for arm/effector
#  POSITION = 1,
#  VELOCITY,
#  TORQUE,
#  CURRENTTORQUE,
#  TRAJECTORY,

#// for effector
#  LIMIT_SET_POSITION_MODE = 11,
#  LIMIT_SET_VELOCITY_MODE,
#  LIMIT_SET_FORCE_MODE,

#// for effector
#  RESET_MODE = 20,
#  BASIC_MODE,
#  PINCH_MODE,
#  WIDE_MODE,
#  SCISSOR_MODE,

#// for effector
#  OPEN_MODE = 30,
#  CLOSE_MODE


int32 mode

string[]  name

# for arm: position/velocity/torque/current_torque
# for effector: position/velocity/force  open/close(0~1, )
float64[] command




================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :limb_core_msgs/JointCommand "94e37e6b9eb645a6cbc62a54515f279c")



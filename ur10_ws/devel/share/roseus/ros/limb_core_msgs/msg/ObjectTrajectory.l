;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::ObjectTrajectory)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'ObjectTrajectory (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::OBJECTTRAJECTORY")
  (make-package "LIMB_CORE_MSGS::OBJECTTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude ObjectTrajectory.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass limb_core_msgs::ObjectTrajectory
  :super ros::object
  :slots (_id _pose _time_stamps _trajectory ))

(defmethod limb_core_msgs::ObjectTrajectory
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:time_stamps __time_stamps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
   (setq _time_stamps __time_stamps)
   (setq _trajectory __trajectory)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:time_stamps
   (&optional __time_stamps)
   (if __time_stamps (setq _time_stamps __time_stamps)) _time_stamps)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/PoseStamped[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; float64[] _time_stamps
    (* 8    (length _time_stamps)) 4
    ;; limb_core_msgs/Float64MultiArray[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/PoseStamped[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; float64[] _time_stamps
     (write-long (length _time_stamps) s)
     (dotimes (i (length _time_stamps))
       (sys::poke (elt _time_stamps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; limb_core_msgs/Float64MultiArray[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _time_stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_stamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_stamps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; limb_core_msgs/Float64MultiArray[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get limb_core_msgs::ObjectTrajectory :md5sum-) "d26b33c46457cd48a88db617205b69de")
(setf (get limb_core_msgs::ObjectTrajectory :datatype-) "limb_core_msgs/ObjectTrajectory")
(setf (get limb_core_msgs::ObjectTrajectory :definition-)
      "string id
geometry_msgs/PoseStamped[] pose

float64[] time_stamps

limb_core_msgs/Float64MultiArray[] trajectory

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: limb_core_msgs/Float64MultiArray
Header header
float64[] data

")



(provide :limb_core_msgs/ObjectTrajectory "d26b33c46457cd48a88db617205b69de")



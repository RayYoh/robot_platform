;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::GetObjectTrajectory)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'GetObjectTrajectory (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORY")
  (make-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORY"))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORYREQUEST")
  (make-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORYREQUEST"))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORYRESPONSE")
  (make-package "LIMB_CORE_MSGS::GETOBJECTTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass limb_core_msgs::GetObjectTrajectoryRequest
  :super ros::object
  :slots (_id _pose ))

(defmethod limb_core_msgs::GetObjectTrajectoryRequest
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
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
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/PoseStamped[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
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
   ;;
   self)
  )

(defclass limb_core_msgs::GetObjectTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod limb_core_msgs::GetObjectTrajectoryResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass limb_core_msgs::GetObjectTrajectory
  :super ros::object
  :slots ())

(setf (get limb_core_msgs::GetObjectTrajectory :md5sum-) "670fd0fb651b5b6b3441cfb7fb2b33a4")
(setf (get limb_core_msgs::GetObjectTrajectory :datatype-) "limb_core_msgs/GetObjectTrajectory")
(setf (get limb_core_msgs::GetObjectTrajectory :request) limb_core_msgs::GetObjectTrajectoryRequest)
(setf (get limb_core_msgs::GetObjectTrajectory :response) limb_core_msgs::GetObjectTrajectoryResponse)

(defmethod limb_core_msgs::GetObjectTrajectoryRequest
  (:response () (instance limb_core_msgs::GetObjectTrajectoryResponse :init)))

(setf (get limb_core_msgs::GetObjectTrajectoryRequest :md5sum-) "670fd0fb651b5b6b3441cfb7fb2b33a4")
(setf (get limb_core_msgs::GetObjectTrajectoryRequest :datatype-) "limb_core_msgs/GetObjectTrajectoryRequest")
(setf (get limb_core_msgs::GetObjectTrajectoryRequest :definition-)
      "string id
geometry_msgs/PoseStamped[] pose


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
---

bool success

")

(setf (get limb_core_msgs::GetObjectTrajectoryResponse :md5sum-) "670fd0fb651b5b6b3441cfb7fb2b33a4")
(setf (get limb_core_msgs::GetObjectTrajectoryResponse :datatype-) "limb_core_msgs/GetObjectTrajectoryResponse")
(setf (get limb_core_msgs::GetObjectTrajectoryResponse :definition-)
      "string id
geometry_msgs/PoseStamped[] pose


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
---

bool success

")



(provide :limb_core_msgs/GetObjectTrajectory "670fd0fb651b5b6b3441cfb7fb2b33a4")



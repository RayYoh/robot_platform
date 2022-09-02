;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::GetObjectPose)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'GetObjectPose (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTPOSE")
  (make-package "LIMB_CORE_MSGS::GETOBJECTPOSE"))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTPOSEREQUEST")
  (make-package "LIMB_CORE_MSGS::GETOBJECTPOSEREQUEST"))
(unless (find-package "LIMB_CORE_MSGS::GETOBJECTPOSERESPONSE")
  (make-package "LIMB_CORE_MSGS::GETOBJECTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass limb_core_msgs::GetObjectPoseRequest
  :super ros::object
  :slots (_id _in_hand _pose ))

(defmethod limb_core_msgs::GetObjectPoseRequest
  (:init
   (&key
    ((:id __id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:in_hand __in_hand) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _in_hand __in_hand)
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:in_hand
   (&optional __in_hand)
   (if __in_hand (setq _in_hand __in_hand)) _in_hand)
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
    ;; string[] _id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _id)) 4
    ;; bool[] _in_hand
    (* 1    (length _in_hand)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _id
     (write-long (length _id) s)
     (dolist (elem _id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _in_hand
     (write-long (length _in_hand) s)
     (dotimes (i (length _in_hand))
       (if (elt _in_hand i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _in_hand
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _in_hand (make-list n))
     (dotimes (i n)
     (setf (elt _in_hand i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass limb_core_msgs::GetObjectPoseResponse
  :super ros::object
  :slots (_header _id _pose ))

(defmethod limb_core_msgs::GetObjectPoseResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _id)) 4
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _id
     (write-long (length _id) s)
     (dolist (elem _id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass limb_core_msgs::GetObjectPose
  :super ros::object
  :slots ())

(setf (get limb_core_msgs::GetObjectPose :md5sum-) "b2cf2bdbfc28ab78c6337ab9541cda4c")
(setf (get limb_core_msgs::GetObjectPose :datatype-) "limb_core_msgs/GetObjectPose")
(setf (get limb_core_msgs::GetObjectPose :request) limb_core_msgs::GetObjectPoseRequest)
(setf (get limb_core_msgs::GetObjectPose :response) limb_core_msgs::GetObjectPoseResponse)

(defmethod limb_core_msgs::GetObjectPoseRequest
  (:response () (instance limb_core_msgs::GetObjectPoseResponse :init)))

(setf (get limb_core_msgs::GetObjectPoseRequest :md5sum-) "b2cf2bdbfc28ab78c6337ab9541cda4c")
(setf (get limb_core_msgs::GetObjectPoseRequest :datatype-) "limb_core_msgs/GetObjectPoseRequest")
(setf (get limb_core_msgs::GetObjectPoseRequest :definition-)
      "string[] id
bool[] in_hand
geometry_msgs/Pose pose # torso->tool


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

std_msgs/Header header
string[] id
geometry_msgs/Pose[] pose # torso->object


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
")

(setf (get limb_core_msgs::GetObjectPoseResponse :md5sum-) "b2cf2bdbfc28ab78c6337ab9541cda4c")
(setf (get limb_core_msgs::GetObjectPoseResponse :datatype-) "limb_core_msgs/GetObjectPoseResponse")
(setf (get limb_core_msgs::GetObjectPoseResponse :definition-)
      "string[] id
bool[] in_hand
geometry_msgs/Pose pose # torso->tool


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

std_msgs/Header header
string[] id
geometry_msgs/Pose[] pose # torso->object


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
")



(provide :limb_core_msgs/GetObjectPose "b2cf2bdbfc28ab78c6337ab9541cda4c")



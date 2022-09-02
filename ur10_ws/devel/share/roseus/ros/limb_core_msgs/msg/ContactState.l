;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::ContactState)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'ContactState (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::CONTACTSTATE")
  (make-package "LIMB_CORE_MSGS::CONTACTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContactState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass limb_core_msgs::ContactState
  :super ros::object
  :slots (_header _contact_num _contact_geom_id_1 _contact_geom_id_2 _contact_geom_name_1 _contact_geom_name_2 _contact_dist _contact_pose _contact_force ))

(defmethod limb_core_msgs::ContactState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:contact_num __contact_num) 0)
    ((:contact_geom_id_1 __contact_geom_id_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:contact_geom_id_2 __contact_geom_id_2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:contact_geom_name_1 __contact_geom_name_1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:contact_geom_name_2 __contact_geom_name_2) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:contact_dist __contact_dist) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:contact_pose __contact_pose) (let (r) (dotimes (i 0) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
    ((:contact_force __contact_force) (let (r) (dotimes (i 0) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _contact_num (round __contact_num))
   (setq _contact_geom_id_1 __contact_geom_id_1)
   (setq _contact_geom_id_2 __contact_geom_id_2)
   (setq _contact_geom_name_1 __contact_geom_name_1)
   (setq _contact_geom_name_2 __contact_geom_name_2)
   (setq _contact_dist __contact_dist)
   (setq _contact_pose __contact_pose)
   (setq _contact_force __contact_force)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:contact_num
   (&optional __contact_num)
   (if __contact_num (setq _contact_num __contact_num)) _contact_num)
  (:contact_geom_id_1
   (&optional __contact_geom_id_1)
   (if __contact_geom_id_1 (setq _contact_geom_id_1 __contact_geom_id_1)) _contact_geom_id_1)
  (:contact_geom_id_2
   (&optional __contact_geom_id_2)
   (if __contact_geom_id_2 (setq _contact_geom_id_2 __contact_geom_id_2)) _contact_geom_id_2)
  (:contact_geom_name_1
   (&optional __contact_geom_name_1)
   (if __contact_geom_name_1 (setq _contact_geom_name_1 __contact_geom_name_1)) _contact_geom_name_1)
  (:contact_geom_name_2
   (&optional __contact_geom_name_2)
   (if __contact_geom_name_2 (setq _contact_geom_name_2 __contact_geom_name_2)) _contact_geom_name_2)
  (:contact_dist
   (&optional __contact_dist)
   (if __contact_dist (setq _contact_dist __contact_dist)) _contact_dist)
  (:contact_pose
   (&rest __contact_pose)
   (if (keywordp (car __contact_pose))
       (send* _contact_pose __contact_pose)
     (progn
       (if __contact_pose (setq _contact_pose (car __contact_pose)))
       _contact_pose)))
  (:contact_force
   (&rest __contact_force)
   (if (keywordp (car __contact_force))
       (send* _contact_force __contact_force)
     (progn
       (if __contact_force (setq _contact_force (car __contact_force)))
       _contact_force)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _contact_num
    2
    ;; float64[] _contact_geom_id_1
    (* 8    (length _contact_geom_id_1)) 4
    ;; float64[] _contact_geom_id_2
    (* 8    (length _contact_geom_id_2)) 4
    ;; string[] _contact_geom_name_1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _contact_geom_name_1)) 4
    ;; string[] _contact_geom_name_2
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _contact_geom_name_2)) 4
    ;; float64[] _contact_dist
    (* 8    (length _contact_dist)) 4
    ;; limb_core_msgs/Float64MultiArray[] _contact_pose
    (apply #'+ (send-all _contact_pose :serialization-length)) 4
    ;; limb_core_msgs/Float64MultiArray[] _contact_force
    (apply #'+ (send-all _contact_force :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _contact_num
       (write-word _contact_num s)
     ;; float64[] _contact_geom_id_1
     (write-long (length _contact_geom_id_1) s)
     (dotimes (i (length _contact_geom_id_1))
       (sys::poke (elt _contact_geom_id_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _contact_geom_id_2
     (write-long (length _contact_geom_id_2) s)
     (dotimes (i (length _contact_geom_id_2))
       (sys::poke (elt _contact_geom_id_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _contact_geom_name_1
     (write-long (length _contact_geom_name_1) s)
     (dolist (elem _contact_geom_name_1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _contact_geom_name_2
     (write-long (length _contact_geom_name_2) s)
     (dolist (elem _contact_geom_name_2)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _contact_dist
     (write-long (length _contact_dist) s)
     (dotimes (i (length _contact_dist))
       (sys::poke (elt _contact_dist i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; limb_core_msgs/Float64MultiArray[] _contact_pose
     (write-long (length _contact_pose) s)
     (dolist (elem _contact_pose)
       (send elem :serialize s)
       )
     ;; limb_core_msgs/Float64MultiArray[] _contact_force
     (write-long (length _contact_force) s)
     (dolist (elem _contact_force)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _contact_num
     (setq _contact_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[] _contact_geom_id_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_geom_id_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _contact_geom_id_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _contact_geom_id_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_geom_id_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _contact_geom_id_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _contact_geom_name_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_geom_name_1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _contact_geom_name_1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _contact_geom_name_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_geom_name_2 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _contact_geom_name_2 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _contact_dist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_dist (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _contact_dist i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; limb_core_msgs/Float64MultiArray[] _contact_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_pose (let (r) (dotimes (i n) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
     (dolist (elem- _contact_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; limb_core_msgs/Float64MultiArray[] _contact_force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_force (let (r) (dotimes (i n) (push (instance limb_core_msgs::Float64MultiArray :init) r)) r))
     (dolist (elem- _contact_force)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get limb_core_msgs::ContactState :md5sum-) "1c359b5fe416632eb0ad0a1cb3285b15")
(setf (get limb_core_msgs::ContactState :datatype-) "limb_core_msgs/ContactState")
(setf (get limb_core_msgs::ContactState :definition-)
      "Header header
uint16 contact_num
float64[] contact_geom_id_1
float64[] contact_geom_id_2
string[] contact_geom_name_1
string[] contact_geom_name_2
float64[] contact_dist
limb_core_msgs/Float64MultiArray[] contact_pose
limb_core_msgs/Float64MultiArray[] contact_force


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
MSG: limb_core_msgs/Float64MultiArray
Header header
float64[] data

")



(provide :limb_core_msgs/ContactState "1c359b5fe416632eb0ad0a1cb3285b15")



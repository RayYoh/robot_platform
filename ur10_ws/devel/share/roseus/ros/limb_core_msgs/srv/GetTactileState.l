;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::GetTactileState)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'GetTactileState (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::GETTACTILESTATE")
  (make-package "LIMB_CORE_MSGS::GETTACTILESTATE"))
(unless (find-package "LIMB_CORE_MSGS::GETTACTILESTATEREQUEST")
  (make-package "LIMB_CORE_MSGS::GETTACTILESTATEREQUEST"))
(unless (find-package "LIMB_CORE_MSGS::GETTACTILESTATERESPONSE")
  (make-package "LIMB_CORE_MSGS::GETTACTILESTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass limb_core_msgs::GetTactileStateRequest
  :super ros::object
  :slots (_id ))

(defmethod limb_core_msgs::GetTactileStateRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass limb_core_msgs::GetTactileStateResponse
  :super ros::object
  :slots (_result _header _data ))

(defmethod limb_core_msgs::GetTactileStateResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result __result)
   (setq _header __header)
   (setq _data __data)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16[] _data
    (* 2    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-word (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass limb_core_msgs::GetTactileState
  :super ros::object
  :slots ())

(setf (get limb_core_msgs::GetTactileState :md5sum-) "2c24e2bd6b65d67db954ab24fe1a2513")
(setf (get limb_core_msgs::GetTactileState :datatype-) "limb_core_msgs/GetTactileState")
(setf (get limb_core_msgs::GetTactileState :request) limb_core_msgs::GetTactileStateRequest)
(setf (get limb_core_msgs::GetTactileState :response) limb_core_msgs::GetTactileStateResponse)

(defmethod limb_core_msgs::GetTactileStateRequest
  (:response () (instance limb_core_msgs::GetTactileStateResponse :init)))

(setf (get limb_core_msgs::GetTactileStateRequest :md5sum-) "2c24e2bd6b65d67db954ab24fe1a2513")
(setf (get limb_core_msgs::GetTactileStateRequest :datatype-) "limb_core_msgs/GetTactileStateRequest")
(setf (get limb_core_msgs::GetTactileStateRequest :definition-)
      "int16 id

---
bool result
std_msgs/Header header
int16[] data


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

(setf (get limb_core_msgs::GetTactileStateResponse :md5sum-) "2c24e2bd6b65d67db954ab24fe1a2513")
(setf (get limb_core_msgs::GetTactileStateResponse :datatype-) "limb_core_msgs/GetTactileStateResponse")
(setf (get limb_core_msgs::GetTactileStateResponse :definition-)
      "int16 id

---
bool result
std_msgs/Header header
int16[] data


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



(provide :limb_core_msgs/GetTactileState "2c24e2bd6b65d67db954ab24fe1a2513")



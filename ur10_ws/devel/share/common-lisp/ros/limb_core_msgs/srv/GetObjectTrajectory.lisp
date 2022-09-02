; Auto-generated. Do not edit!


(cl:in-package limb_core_msgs-srv)


;//! \htmlinclude GetObjectTrajectory-request.msg.html

(cl:defclass <GetObjectTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass GetObjectTrajectory-request (<GetObjectTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObjectTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObjectTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<GetObjectTrajectory-request> is deprecated: use limb_core_msgs-srv:GetObjectTrajectory-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetObjectTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:id-val is deprecated.  Use limb_core_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetObjectTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:pose-val is deprecated.  Use limb_core_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObjectTrajectory-request>) ostream)
  "Serializes a message object of type '<GetObjectTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObjectTrajectory-request>) istream)
  "Deserializes a message object of type '<GetObjectTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObjectTrajectory-request>)))
  "Returns string type for a service object of type '<GetObjectTrajectory-request>"
  "limb_core_msgs/GetObjectTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectTrajectory-request)))
  "Returns string type for a service object of type 'GetObjectTrajectory-request"
  "limb_core_msgs/GetObjectTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObjectTrajectory-request>)))
  "Returns md5sum for a message object of type '<GetObjectTrajectory-request>"
  "670fd0fb651b5b6b3441cfb7fb2b33a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObjectTrajectory-request)))
  "Returns md5sum for a message object of type 'GetObjectTrajectory-request"
  "670fd0fb651b5b6b3441cfb7fb2b33a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObjectTrajectory-request>)))
  "Returns full string definition for message of type '<GetObjectTrajectory-request>"
  (cl:format cl:nil "string id~%geometry_msgs/PoseStamped[] pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObjectTrajectory-request)))
  "Returns full string definition for message of type 'GetObjectTrajectory-request"
  (cl:format cl:nil "string id~%geometry_msgs/PoseStamped[] pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObjectTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObjectTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObjectTrajectory-request
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude GetObjectTrajectory-response.msg.html

(cl:defclass <GetObjectTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetObjectTrajectory-response (<GetObjectTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObjectTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObjectTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<GetObjectTrajectory-response> is deprecated: use limb_core_msgs-srv:GetObjectTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetObjectTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:success-val is deprecated.  Use limb_core_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObjectTrajectory-response>) ostream)
  "Serializes a message object of type '<GetObjectTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObjectTrajectory-response>) istream)
  "Deserializes a message object of type '<GetObjectTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObjectTrajectory-response>)))
  "Returns string type for a service object of type '<GetObjectTrajectory-response>"
  "limb_core_msgs/GetObjectTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectTrajectory-response)))
  "Returns string type for a service object of type 'GetObjectTrajectory-response"
  "limb_core_msgs/GetObjectTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObjectTrajectory-response>)))
  "Returns md5sum for a message object of type '<GetObjectTrajectory-response>"
  "670fd0fb651b5b6b3441cfb7fb2b33a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObjectTrajectory-response)))
  "Returns md5sum for a message object of type 'GetObjectTrajectory-response"
  "670fd0fb651b5b6b3441cfb7fb2b33a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObjectTrajectory-response>)))
  "Returns full string definition for message of type '<GetObjectTrajectory-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObjectTrajectory-response)))
  "Returns full string definition for message of type 'GetObjectTrajectory-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObjectTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObjectTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObjectTrajectory-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetObjectTrajectory)))
  'GetObjectTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetObjectTrajectory)))
  'GetObjectTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectTrajectory)))
  "Returns string type for a service object of type '<GetObjectTrajectory>"
  "limb_core_msgs/GetObjectTrajectory")
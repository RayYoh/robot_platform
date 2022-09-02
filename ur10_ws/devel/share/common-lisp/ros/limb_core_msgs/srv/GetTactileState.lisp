; Auto-generated. Do not edit!


(cl:in-package limb_core_msgs-srv)


;//! \htmlinclude GetTactileState-request.msg.html

(cl:defclass <GetTactileState-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTactileState-request (<GetTactileState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTactileState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTactileState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<GetTactileState-request> is deprecated: use limb_core_msgs-srv:GetTactileState-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetTactileState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:id-val is deprecated.  Use limb_core_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTactileState-request>) ostream)
  "Serializes a message object of type '<GetTactileState-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTactileState-request>) istream)
  "Deserializes a message object of type '<GetTactileState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTactileState-request>)))
  "Returns string type for a service object of type '<GetTactileState-request>"
  "limb_core_msgs/GetTactileStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTactileState-request)))
  "Returns string type for a service object of type 'GetTactileState-request"
  "limb_core_msgs/GetTactileStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTactileState-request>)))
  "Returns md5sum for a message object of type '<GetTactileState-request>"
  "2c24e2bd6b65d67db954ab24fe1a2513")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTactileState-request)))
  "Returns md5sum for a message object of type 'GetTactileState-request"
  "2c24e2bd6b65d67db954ab24fe1a2513")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTactileState-request>)))
  "Returns full string definition for message of type '<GetTactileState-request>"
  (cl:format cl:nil "int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTactileState-request)))
  "Returns full string definition for message of type 'GetTactileState-request"
  (cl:format cl:nil "int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTactileState-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTactileState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTactileState-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetTactileState-response.msg.html

(cl:defclass <GetTactileState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GetTactileState-response (<GetTactileState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTactileState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTactileState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<GetTactileState-response> is deprecated: use limb_core_msgs-srv:GetTactileState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetTactileState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:result-val is deprecated.  Use limb_core_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetTactileState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:header-val is deprecated.  Use limb_core_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetTactileState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:data-val is deprecated.  Use limb_core_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTactileState-response>) ostream)
  "Serializes a message object of type '<GetTactileState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTactileState-response>) istream)
  "Deserializes a message object of type '<GetTactileState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTactileState-response>)))
  "Returns string type for a service object of type '<GetTactileState-response>"
  "limb_core_msgs/GetTactileStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTactileState-response)))
  "Returns string type for a service object of type 'GetTactileState-response"
  "limb_core_msgs/GetTactileStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTactileState-response>)))
  "Returns md5sum for a message object of type '<GetTactileState-response>"
  "2c24e2bd6b65d67db954ab24fe1a2513")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTactileState-response)))
  "Returns md5sum for a message object of type 'GetTactileState-response"
  "2c24e2bd6b65d67db954ab24fe1a2513")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTactileState-response>)))
  "Returns full string definition for message of type '<GetTactileState-response>"
  (cl:format cl:nil "bool result~%std_msgs/Header header~%int16[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTactileState-response)))
  "Returns full string definition for message of type 'GetTactileState-response"
  (cl:format cl:nil "bool result~%std_msgs/Header header~%int16[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTactileState-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTactileState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTactileState-response
    (cl:cons ':result (result msg))
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTactileState)))
  'GetTactileState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTactileState)))
  'GetTactileState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTactileState)))
  "Returns string type for a service object of type '<GetTactileState>"
  "limb_core_msgs/GetTactileState")
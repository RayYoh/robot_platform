; Auto-generated. Do not edit!


(cl:in-package limb_core_msgs-srv)


;//! \htmlinclude MetaService-request.msg.html

(cl:defclass <MetaService-request> (roslisp-msg-protocol:ros-message)
  ((task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform ""))
)

(cl:defclass MetaService-request (<MetaService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetaService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetaService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<MetaService-request> is deprecated: use limb_core_msgs-srv:MetaService-request instead.")))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <MetaService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:task_name-val is deprecated.  Use limb_core_msgs-srv:task_name instead.")
  (task_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetaService-request>) ostream)
  "Serializes a message object of type '<MetaService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetaService-request>) istream)
  "Deserializes a message object of type '<MetaService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetaService-request>)))
  "Returns string type for a service object of type '<MetaService-request>"
  "limb_core_msgs/MetaServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetaService-request)))
  "Returns string type for a service object of type 'MetaService-request"
  "limb_core_msgs/MetaServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetaService-request>)))
  "Returns md5sum for a message object of type '<MetaService-request>"
  "4b165db9d12f9655e6774b3e72fa417f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetaService-request)))
  "Returns md5sum for a message object of type 'MetaService-request"
  "4b165db9d12f9655e6774b3e72fa417f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetaService-request>)))
  "Returns full string definition for message of type '<MetaService-request>"
  (cl:format cl:nil "string task_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetaService-request)))
  "Returns full string definition for message of type 'MetaService-request"
  (cl:format cl:nil "string task_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetaService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetaService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MetaService-request
    (cl:cons ':task_name (task_name msg))
))
;//! \htmlinclude MetaService-response.msg.html

(cl:defclass <MetaService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MetaService-response (<MetaService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetaService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetaService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limb_core_msgs-srv:<MetaService-response> is deprecated: use limb_core_msgs-srv:MetaService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MetaService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:success-val is deprecated.  Use limb_core_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MetaService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limb_core_msgs-srv:message-val is deprecated.  Use limb_core_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetaService-response>) ostream)
  "Serializes a message object of type '<MetaService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetaService-response>) istream)
  "Deserializes a message object of type '<MetaService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetaService-response>)))
  "Returns string type for a service object of type '<MetaService-response>"
  "limb_core_msgs/MetaServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetaService-response)))
  "Returns string type for a service object of type 'MetaService-response"
  "limb_core_msgs/MetaServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetaService-response>)))
  "Returns md5sum for a message object of type '<MetaService-response>"
  "4b165db9d12f9655e6774b3e72fa417f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetaService-response)))
  "Returns md5sum for a message object of type 'MetaService-response"
  "4b165db9d12f9655e6774b3e72fa417f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetaService-response>)))
  "Returns full string definition for message of type '<MetaService-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetaService-response)))
  "Returns full string definition for message of type 'MetaService-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetaService-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetaService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MetaService-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MetaService)))
  'MetaService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MetaService)))
  'MetaService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetaService)))
  "Returns string type for a service object of type '<MetaService>"
  "limb_core_msgs/MetaService")
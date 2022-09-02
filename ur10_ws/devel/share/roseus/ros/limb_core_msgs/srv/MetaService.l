;; Auto-generated. Do not edit!


(when (boundp 'limb_core_msgs::MetaService)
  (if (not (find-package "LIMB_CORE_MSGS"))
    (make-package "LIMB_CORE_MSGS"))
  (shadow 'MetaService (find-package "LIMB_CORE_MSGS")))
(unless (find-package "LIMB_CORE_MSGS::METASERVICE")
  (make-package "LIMB_CORE_MSGS::METASERVICE"))
(unless (find-package "LIMB_CORE_MSGS::METASERVICEREQUEST")
  (make-package "LIMB_CORE_MSGS::METASERVICEREQUEST"))
(unless (find-package "LIMB_CORE_MSGS::METASERVICERESPONSE")
  (make-package "LIMB_CORE_MSGS::METASERVICERESPONSE"))

(in-package "ROS")





(defclass limb_core_msgs::MetaServiceRequest
  :super ros::object
  :slots (_task_name ))

(defmethod limb_core_msgs::MetaServiceRequest
  (:init
   (&key
    ((:task_name __task_name) "")
    )
   (send-super :init)
   (setq _task_name (string __task_name))
   self)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:serialization-length
   ()
   (+
    ;; string _task_name
    4 (length _task_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass limb_core_msgs::MetaServiceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod limb_core_msgs::MetaServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass limb_core_msgs::MetaService
  :super ros::object
  :slots ())

(setf (get limb_core_msgs::MetaService :md5sum-) "4b165db9d12f9655e6774b3e72fa417f")
(setf (get limb_core_msgs::MetaService :datatype-) "limb_core_msgs/MetaService")
(setf (get limb_core_msgs::MetaService :request) limb_core_msgs::MetaServiceRequest)
(setf (get limb_core_msgs::MetaService :response) limb_core_msgs::MetaServiceResponse)

(defmethod limb_core_msgs::MetaServiceRequest
  (:response () (instance limb_core_msgs::MetaServiceResponse :init)))

(setf (get limb_core_msgs::MetaServiceRequest :md5sum-) "4b165db9d12f9655e6774b3e72fa417f")
(setf (get limb_core_msgs::MetaServiceRequest :datatype-) "limb_core_msgs/MetaServiceRequest")
(setf (get limb_core_msgs::MetaServiceRequest :definition-)
      "string task_name
---
bool success
string message

")

(setf (get limb_core_msgs::MetaServiceResponse :md5sum-) "4b165db9d12f9655e6774b3e72fa417f")
(setf (get limb_core_msgs::MetaServiceResponse :datatype-) "limb_core_msgs/MetaServiceResponse")
(setf (get limb_core_msgs::MetaServiceResponse :definition-)
      "string task_name
---
bool success
string message

")



(provide :limb_core_msgs/MetaService "4b165db9d12f9655e6774b3e72fa417f")




(cl:in-package :asdf)

(defsystem "limb_core_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :limb_core_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetObjectInfo" :depends-on ("_package_GetObjectInfo"))
    (:file "_package_GetObjectInfo" :depends-on ("_package"))
    (:file "GetObjectPose" :depends-on ("_package_GetObjectPose"))
    (:file "_package_GetObjectPose" :depends-on ("_package"))
    (:file "GetObjectTrajectory" :depends-on ("_package_GetObjectTrajectory"))
    (:file "_package_GetObjectTrajectory" :depends-on ("_package"))
    (:file "GetTactileState" :depends-on ("_package_GetTactileState"))
    (:file "_package_GetTactileState" :depends-on ("_package"))
    (:file "MetaService" :depends-on ("_package_MetaService"))
    (:file "_package_MetaService" :depends-on ("_package"))
    (:file "SetObjectInfo" :depends-on ("_package_SetObjectInfo"))
    (:file "_package_SetObjectInfo" :depends-on ("_package"))
    (:file "ShutdownSystem" :depends-on ("_package_ShutdownSystem"))
    (:file "_package_ShutdownSystem" :depends-on ("_package"))
  ))
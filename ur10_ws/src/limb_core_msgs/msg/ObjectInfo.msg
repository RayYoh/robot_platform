# Latest update timestamp
Header header
# Value could be {'longneckbottle', 'smallshaker', 'largershake', 'glass'}
string name
# Describes the context (In which module/sequence/action, any comments) when the object is update
string description
# Status of whether the object is in-hand. Values could be {'left', 'right', 'none'}
string object_in_hand
# The reference frame is the corresponding end-effector frame (when ObjectInHand is either 'left' or 'right'), 
# or the world/torso frame (when ObjectInHand is 'none')
geometry_msgs/Pose pose

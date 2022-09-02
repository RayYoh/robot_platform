// Auto-generated. Do not edit!

// (in-package limb_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Float64MultiArray = require('./Float64MultiArray.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ContactState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.contact_num = null;
      this.contact_geom_id_1 = null;
      this.contact_geom_id_2 = null;
      this.contact_geom_name_1 = null;
      this.contact_geom_name_2 = null;
      this.contact_dist = null;
      this.contact_pose = null;
      this.contact_force = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('contact_num')) {
        this.contact_num = initObj.contact_num
      }
      else {
        this.contact_num = 0;
      }
      if (initObj.hasOwnProperty('contact_geom_id_1')) {
        this.contact_geom_id_1 = initObj.contact_geom_id_1
      }
      else {
        this.contact_geom_id_1 = [];
      }
      if (initObj.hasOwnProperty('contact_geom_id_2')) {
        this.contact_geom_id_2 = initObj.contact_geom_id_2
      }
      else {
        this.contact_geom_id_2 = [];
      }
      if (initObj.hasOwnProperty('contact_geom_name_1')) {
        this.contact_geom_name_1 = initObj.contact_geom_name_1
      }
      else {
        this.contact_geom_name_1 = [];
      }
      if (initObj.hasOwnProperty('contact_geom_name_2')) {
        this.contact_geom_name_2 = initObj.contact_geom_name_2
      }
      else {
        this.contact_geom_name_2 = [];
      }
      if (initObj.hasOwnProperty('contact_dist')) {
        this.contact_dist = initObj.contact_dist
      }
      else {
        this.contact_dist = [];
      }
      if (initObj.hasOwnProperty('contact_pose')) {
        this.contact_pose = initObj.contact_pose
      }
      else {
        this.contact_pose = [];
      }
      if (initObj.hasOwnProperty('contact_force')) {
        this.contact_force = initObj.contact_force
      }
      else {
        this.contact_force = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContactState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [contact_num]
    bufferOffset = _serializer.uint16(obj.contact_num, buffer, bufferOffset);
    // Serialize message field [contact_geom_id_1]
    bufferOffset = _arraySerializer.float64(obj.contact_geom_id_1, buffer, bufferOffset, null);
    // Serialize message field [contact_geom_id_2]
    bufferOffset = _arraySerializer.float64(obj.contact_geom_id_2, buffer, bufferOffset, null);
    // Serialize message field [contact_geom_name_1]
    bufferOffset = _arraySerializer.string(obj.contact_geom_name_1, buffer, bufferOffset, null);
    // Serialize message field [contact_geom_name_2]
    bufferOffset = _arraySerializer.string(obj.contact_geom_name_2, buffer, bufferOffset, null);
    // Serialize message field [contact_dist]
    bufferOffset = _arraySerializer.float64(obj.contact_dist, buffer, bufferOffset, null);
    // Serialize message field [contact_pose]
    // Serialize the length for message field [contact_pose]
    bufferOffset = _serializer.uint32(obj.contact_pose.length, buffer, bufferOffset);
    obj.contact_pose.forEach((val) => {
      bufferOffset = Float64MultiArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contact_force]
    // Serialize the length for message field [contact_force]
    bufferOffset = _serializer.uint32(obj.contact_force.length, buffer, bufferOffset);
    obj.contact_force.forEach((val) => {
      bufferOffset = Float64MultiArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContactState
    let len;
    let data = new ContactState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [contact_num]
    data.contact_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [contact_geom_id_1]
    data.contact_geom_id_1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [contact_geom_id_2]
    data.contact_geom_id_2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [contact_geom_name_1]
    data.contact_geom_name_1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [contact_geom_name_2]
    data.contact_geom_name_2 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [contact_dist]
    data.contact_dist = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [contact_pose]
    // Deserialize array length for message field [contact_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_pose[i] = Float64MultiArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contact_force]
    // Deserialize array length for message field [contact_force]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_force = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_force[i] = Float64MultiArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.contact_geom_id_1.length;
    length += 8 * object.contact_geom_id_2.length;
    object.contact_geom_name_1.forEach((val) => {
      length += 4 + val.length;
    });
    object.contact_geom_name_2.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.contact_dist.length;
    object.contact_pose.forEach((val) => {
      length += Float64MultiArray.getMessageSize(val);
    });
    object.contact_force.forEach((val) => {
      length += Float64MultiArray.getMessageSize(val);
    });
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limb_core_msgs/ContactState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c359b5fe416632eb0ad0a1cb3285b15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContactState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.contact_num !== undefined) {
      resolved.contact_num = msg.contact_num;
    }
    else {
      resolved.contact_num = 0
    }

    if (msg.contact_geom_id_1 !== undefined) {
      resolved.contact_geom_id_1 = msg.contact_geom_id_1;
    }
    else {
      resolved.contact_geom_id_1 = []
    }

    if (msg.contact_geom_id_2 !== undefined) {
      resolved.contact_geom_id_2 = msg.contact_geom_id_2;
    }
    else {
      resolved.contact_geom_id_2 = []
    }

    if (msg.contact_geom_name_1 !== undefined) {
      resolved.contact_geom_name_1 = msg.contact_geom_name_1;
    }
    else {
      resolved.contact_geom_name_1 = []
    }

    if (msg.contact_geom_name_2 !== undefined) {
      resolved.contact_geom_name_2 = msg.contact_geom_name_2;
    }
    else {
      resolved.contact_geom_name_2 = []
    }

    if (msg.contact_dist !== undefined) {
      resolved.contact_dist = msg.contact_dist;
    }
    else {
      resolved.contact_dist = []
    }

    if (msg.contact_pose !== undefined) {
      resolved.contact_pose = new Array(msg.contact_pose.length);
      for (let i = 0; i < resolved.contact_pose.length; ++i) {
        resolved.contact_pose[i] = Float64MultiArray.Resolve(msg.contact_pose[i]);
      }
    }
    else {
      resolved.contact_pose = []
    }

    if (msg.contact_force !== undefined) {
      resolved.contact_force = new Array(msg.contact_force.length);
      for (let i = 0; i < resolved.contact_force.length; ++i) {
        resolved.contact_force[i] = Float64MultiArray.Resolve(msg.contact_force[i]);
      }
    }
    else {
      resolved.contact_force = []
    }

    return resolved;
    }
};

module.exports = ContactState;

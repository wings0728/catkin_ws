// Auto-generated. Do not edit!

// (in-package t3_description.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let goal = require('./goal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class goals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('goal_list')) {
        this.goal_list = initObj.goal_list
      }
      else {
        this.goal_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goals
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_list]
    // Serialize the length for message field [goal_list]
    bufferOffset = _serializer.uint32(obj.goal_list.length, buffer, bufferOffset);
    obj.goal_list.forEach((val) => {
      bufferOffset = goal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goals
    let len;
    let data = new goals(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_list]
    // Deserialize array length for message field [goal_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal_list[i] = goal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.goal_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 't3_description/goals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acbe0f07c0aa4c7480edfbb28df6f816';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    t3_description/goal[] goal_list
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: t3_description/goal
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goals(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.goal_list !== undefined) {
      resolved.goal_list = new Array(msg.goal_list.length);
      for (let i = 0; i < resolved.goal_list.length; ++i) {
        resolved.goal_list[i] = goal.Resolve(msg.goal_list[i]);
      }
    }
    else {
      resolved.goal_list = []
    }

    return resolved;
    }
};

module.exports = goals;

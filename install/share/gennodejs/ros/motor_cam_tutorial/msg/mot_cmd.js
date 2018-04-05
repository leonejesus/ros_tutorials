// Auto-generated. Do not edit!

// (in-package motor_cam_tutorial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mot_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.mot_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = false;
      }
      if (initObj.hasOwnProperty('mot_pos')) {
        this.mot_pos = initObj.mot_pos
      }
      else {
        this.mot_pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mot_cmd
    // Serialize message field [cmd]
    bufferOffset = _serializer.bool(obj.cmd, buffer, bufferOffset);
    // Serialize message field [mot_pos]
    bufferOffset = _serializer.float32(obj.mot_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mot_cmd
    let len;
    let data = new mot_cmd(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mot_pos]
    data.mot_pos = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motor_cam_tutorial/mot_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '738fdb4e3563fa17b955dd65d43eb19c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool cmd
    float32 mot_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mot_cmd(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = false
    }

    if (msg.mot_pos !== undefined) {
      resolved.mot_pos = msg.mot_pos;
    }
    else {
      resolved.mot_pos = 0.0
    }

    return resolved;
    }
};

module.exports = mot_cmd;

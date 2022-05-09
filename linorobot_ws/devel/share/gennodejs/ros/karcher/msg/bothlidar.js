// Auto-generated. Do not edit!

// (in-package karcher.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bothlidar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.above = null;
      this.slant = null;
    }
    else {
      if (initObj.hasOwnProperty('above')) {
        this.above = initObj.above
      }
      else {
        this.above = [];
      }
      if (initObj.hasOwnProperty('slant')) {
        this.slant = initObj.slant
      }
      else {
        this.slant = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bothlidar
    // Serialize message field [above]
    bufferOffset = _arraySerializer.float32(obj.above, buffer, bufferOffset, null);
    // Serialize message field [slant]
    bufferOffset = _arraySerializer.float32(obj.slant, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bothlidar
    let len;
    let data = new bothlidar(null);
    // Deserialize message field [above]
    data.above = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [slant]
    data.slant = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.above.length;
    length += 4 * object.slant.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'karcher/bothlidar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32fad128505ad63538e8c4cc9e9a6dbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] above
    float32[] slant
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bothlidar(null);
    if (msg.above !== undefined) {
      resolved.above = msg.above;
    }
    else {
      resolved.above = []
    }

    if (msg.slant !== undefined) {
      resolved.slant = msg.slant;
    }
    else {
      resolved.slant = []
    }

    return resolved;
    }
};

module.exports = bothlidar;

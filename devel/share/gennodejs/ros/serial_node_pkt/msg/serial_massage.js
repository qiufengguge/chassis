// Auto-generated. Do not edit!

// (in-package serial_node_pkt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class serial_massage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.data_two = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('data_two')) {
        this.data_two = initObj.data_two
      }
      else {
        this.data_two = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serial_massage
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [data_two]
    bufferOffset = _serializer.string(obj.data_two, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serial_massage
    let len;
    let data = new serial_massage(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data_two]
    data.data_two = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    length += object.data_two.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial_node_pkt/serial_massage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fd29414c00de9e0c5d9c3a1ce7ea153';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    string data_two
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serial_massage(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.data_two !== undefined) {
      resolved.data_two = msg.data_two;
    }
    else {
      resolved.data_two = ''
    }

    return resolved;
    }
};

module.exports = serial_massage;

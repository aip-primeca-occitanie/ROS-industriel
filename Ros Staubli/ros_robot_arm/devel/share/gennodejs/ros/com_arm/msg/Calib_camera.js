// Auto-generated. Do not edit!

// (in-package com_arm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Calib_camera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point0 = null;
      this.point1 = null;
      this.point2 = null;
      this.point3 = null;
    }
    else {
      if (initObj.hasOwnProperty('point0')) {
        this.point0 = initObj.point0
      }
      else {
        this.point0 = false;
      }
      if (initObj.hasOwnProperty('point1')) {
        this.point1 = initObj.point1
      }
      else {
        this.point1 = false;
      }
      if (initObj.hasOwnProperty('point2')) {
        this.point2 = initObj.point2
      }
      else {
        this.point2 = false;
      }
      if (initObj.hasOwnProperty('point3')) {
        this.point3 = initObj.point3
      }
      else {
        this.point3 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Calib_camera
    // Serialize message field [point0]
    bufferOffset = _serializer.bool(obj.point0, buffer, bufferOffset);
    // Serialize message field [point1]
    bufferOffset = _serializer.bool(obj.point1, buffer, bufferOffset);
    // Serialize message field [point2]
    bufferOffset = _serializer.bool(obj.point2, buffer, bufferOffset);
    // Serialize message field [point3]
    bufferOffset = _serializer.bool(obj.point3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Calib_camera
    let len;
    let data = new Calib_camera(null);
    // Deserialize message field [point0]
    data.point0 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [point1]
    data.point1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [point2]
    data.point2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [point3]
    data.point3 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com_arm/Calib_camera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08b01bb680791f8362dea80ccacc5fb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool point0
    bool point1
    bool point2
    bool point3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Calib_camera(null);
    if (msg.point0 !== undefined) {
      resolved.point0 = msg.point0;
    }
    else {
      resolved.point0 = false
    }

    if (msg.point1 !== undefined) {
      resolved.point1 = msg.point1;
    }
    else {
      resolved.point1 = false
    }

    if (msg.point2 !== undefined) {
      resolved.point2 = msg.point2;
    }
    else {
      resolved.point2 = false
    }

    if (msg.point3 !== undefined) {
      resolved.point3 = msg.point3;
    }
    else {
      resolved.point3 = false
    }

    return resolved;
    }
};

module.exports = Calib_camera;

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

class Control_cellule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.memoire = null;
      this.val = null;
    }
    else {
      if (initObj.hasOwnProperty('memoire')) {
        this.memoire = initObj.memoire
      }
      else {
        this.memoire = '';
      }
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control_cellule
    // Serialize message field [memoire]
    bufferOffset = _serializer.string(obj.memoire, buffer, bufferOffset);
    // Serialize message field [val]
    bufferOffset = _serializer.int32(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control_cellule
    let len;
    let data = new Control_cellule(null);
    // Deserialize message field [memoire]
    data.memoire = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [val]
    data.val = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.memoire.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com_arm/Control_cellule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8355e28e75c846f16d2d77f7bdba3b7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string memoire
    int32 val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control_cellule(null);
    if (msg.memoire !== undefined) {
      resolved.memoire = msg.memoire;
    }
    else {
      resolved.memoire = ''
    }

    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0
    }

    return resolved;
    }
};

module.exports = Control_cellule;

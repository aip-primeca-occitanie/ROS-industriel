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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isPowered = null;
      this.isCalibrated = null;
      this.workingMode = null;
      this.esStatus = null;
      this.moniteurSpeed = null;
      this.shoulder = null;
      this.elbow = null;
      this.wrist = null;
      this.isSettled = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('isPowered')) {
        this.isPowered = initObj.isPowered
      }
      else {
        this.isPowered = 0;
      }
      if (initObj.hasOwnProperty('isCalibrated')) {
        this.isCalibrated = initObj.isCalibrated
      }
      else {
        this.isCalibrated = 0;
      }
      if (initObj.hasOwnProperty('workingMode')) {
        this.workingMode = initObj.workingMode
      }
      else {
        this.workingMode = 0;
      }
      if (initObj.hasOwnProperty('esStatus')) {
        this.esStatus = initObj.esStatus
      }
      else {
        this.esStatus = 0;
      }
      if (initObj.hasOwnProperty('moniteurSpeed')) {
        this.moniteurSpeed = initObj.moniteurSpeed
      }
      else {
        this.moniteurSpeed = 0;
      }
      if (initObj.hasOwnProperty('shoulder')) {
        this.shoulder = initObj.shoulder
      }
      else {
        this.shoulder = 0;
      }
      if (initObj.hasOwnProperty('elbow')) {
        this.elbow = initObj.elbow
      }
      else {
        this.elbow = 0;
      }
      if (initObj.hasOwnProperty('wrist')) {
        this.wrist = initObj.wrist
      }
      else {
        this.wrist = 0;
      }
      if (initObj.hasOwnProperty('isSettled')) {
        this.isSettled = initObj.isSettled
      }
      else {
        this.isSettled = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [isPowered]
    bufferOffset = _serializer.int32(obj.isPowered, buffer, bufferOffset);
    // Serialize message field [isCalibrated]
    bufferOffset = _serializer.int32(obj.isCalibrated, buffer, bufferOffset);
    // Serialize message field [workingMode]
    bufferOffset = _serializer.int32(obj.workingMode, buffer, bufferOffset);
    // Serialize message field [esStatus]
    bufferOffset = _serializer.int32(obj.esStatus, buffer, bufferOffset);
    // Serialize message field [moniteurSpeed]
    bufferOffset = _serializer.int32(obj.moniteurSpeed, buffer, bufferOffset);
    // Serialize message field [shoulder]
    bufferOffset = _serializer.int32(obj.shoulder, buffer, bufferOffset);
    // Serialize message field [elbow]
    bufferOffset = _serializer.int32(obj.elbow, buffer, bufferOffset);
    // Serialize message field [wrist]
    bufferOffset = _serializer.int32(obj.wrist, buffer, bufferOffset);
    // Serialize message field [isSettled]
    bufferOffset = _serializer.int32(obj.isSettled, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.int32(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [isPowered]
    data.isPowered = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isCalibrated]
    data.isCalibrated = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [workingMode]
    data.workingMode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [esStatus]
    data.esStatus = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [moniteurSpeed]
    data.moniteurSpeed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shoulder]
    data.shoulder = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [elbow]
    data.elbow = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wrist]
    data.wrist = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isSettled]
    data.isSettled = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com_arm/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3442225a740fff286fb5123e1a12991a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 isPowered
    int32 isCalibrated
    int32 workingMode
    int32 esStatus
    int32 moniteurSpeed
    int32 shoulder
    int32 elbow
    int32 wrist
    int32 isSettled
    int32 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.isPowered !== undefined) {
      resolved.isPowered = msg.isPowered;
    }
    else {
      resolved.isPowered = 0
    }

    if (msg.isCalibrated !== undefined) {
      resolved.isCalibrated = msg.isCalibrated;
    }
    else {
      resolved.isCalibrated = 0
    }

    if (msg.workingMode !== undefined) {
      resolved.workingMode = msg.workingMode;
    }
    else {
      resolved.workingMode = 0
    }

    if (msg.esStatus !== undefined) {
      resolved.esStatus = msg.esStatus;
    }
    else {
      resolved.esStatus = 0
    }

    if (msg.moniteurSpeed !== undefined) {
      resolved.moniteurSpeed = msg.moniteurSpeed;
    }
    else {
      resolved.moniteurSpeed = 0
    }

    if (msg.shoulder !== undefined) {
      resolved.shoulder = msg.shoulder;
    }
    else {
      resolved.shoulder = 0
    }

    if (msg.elbow !== undefined) {
      resolved.elbow = msg.elbow;
    }
    else {
      resolved.elbow = 0
    }

    if (msg.wrist !== undefined) {
      resolved.wrist = msg.wrist;
    }
    else {
      resolved.wrist = 0
    }

    if (msg.isSettled !== undefined) {
      resolved.isSettled = msg.isSettled;
    }
    else {
      resolved.isSettled = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

module.exports = State;

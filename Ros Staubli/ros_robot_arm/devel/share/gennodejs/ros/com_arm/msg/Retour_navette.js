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

class Retour_navette {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ST1 = null;
      this.ST2 = null;
      this.ST3 = null;
      this.ST4 = null;
      this.ST5 = null;
      this.ST20 = null;
      this.ST21 = null;
      this.ST22 = null;
      this.ST23 = null;
      this.ST24 = null;
      this.R1D = null;
      this.R2D = null;
      this.R11D = null;
      this.R12D = null;
      this.R1G = null;
      this.R2G = null;
      this.R11G = null;
      this.R12G = null;
      this.PI1 = null;
      this.PI2 = null;
      this.PI7 = null;
      this.PI8 = null;
      this.D1 = null;
      this.D2 = null;
      this.D11 = null;
      this.D12 = null;
      this.V1 = null;
      this.V2 = null;
      this.V11 = null;
      this.V12 = null;
      this.PS1 = null;
      this.PS2 = null;
      this.PS3 = null;
      this.PS4 = null;
      this.PS5 = null;
      this.PS20 = null;
      this.PS21 = null;
      this.PS22 = null;
      this.PS23 = null;
      this.PS24 = null;
      this.D1D = null;
      this.D2D = null;
      this.D11D = null;
      this.D12D = null;
      this.D1G = null;
      this.D2G = null;
      this.D11G = null;
      this.D12G = null;
      this.CPI1 = null;
      this.CPI2 = null;
      this.CPI7 = null;
      this.CPI8 = null;
      this.CP1 = null;
      this.CP2 = null;
      this.CP9 = null;
      this.CP10 = null;
    }
    else {
      if (initObj.hasOwnProperty('ST1')) {
        this.ST1 = initObj.ST1
      }
      else {
        this.ST1 = false;
      }
      if (initObj.hasOwnProperty('ST2')) {
        this.ST2 = initObj.ST2
      }
      else {
        this.ST2 = false;
      }
      if (initObj.hasOwnProperty('ST3')) {
        this.ST3 = initObj.ST3
      }
      else {
        this.ST3 = false;
      }
      if (initObj.hasOwnProperty('ST4')) {
        this.ST4 = initObj.ST4
      }
      else {
        this.ST4 = false;
      }
      if (initObj.hasOwnProperty('ST5')) {
        this.ST5 = initObj.ST5
      }
      else {
        this.ST5 = false;
      }
      if (initObj.hasOwnProperty('ST20')) {
        this.ST20 = initObj.ST20
      }
      else {
        this.ST20 = false;
      }
      if (initObj.hasOwnProperty('ST21')) {
        this.ST21 = initObj.ST21
      }
      else {
        this.ST21 = false;
      }
      if (initObj.hasOwnProperty('ST22')) {
        this.ST22 = initObj.ST22
      }
      else {
        this.ST22 = false;
      }
      if (initObj.hasOwnProperty('ST23')) {
        this.ST23 = initObj.ST23
      }
      else {
        this.ST23 = false;
      }
      if (initObj.hasOwnProperty('ST24')) {
        this.ST24 = initObj.ST24
      }
      else {
        this.ST24 = false;
      }
      if (initObj.hasOwnProperty('R1D')) {
        this.R1D = initObj.R1D
      }
      else {
        this.R1D = false;
      }
      if (initObj.hasOwnProperty('R2D')) {
        this.R2D = initObj.R2D
      }
      else {
        this.R2D = false;
      }
      if (initObj.hasOwnProperty('R11D')) {
        this.R11D = initObj.R11D
      }
      else {
        this.R11D = false;
      }
      if (initObj.hasOwnProperty('R12D')) {
        this.R12D = initObj.R12D
      }
      else {
        this.R12D = false;
      }
      if (initObj.hasOwnProperty('R1G')) {
        this.R1G = initObj.R1G
      }
      else {
        this.R1G = false;
      }
      if (initObj.hasOwnProperty('R2G')) {
        this.R2G = initObj.R2G
      }
      else {
        this.R2G = false;
      }
      if (initObj.hasOwnProperty('R11G')) {
        this.R11G = initObj.R11G
      }
      else {
        this.R11G = false;
      }
      if (initObj.hasOwnProperty('R12G')) {
        this.R12G = initObj.R12G
      }
      else {
        this.R12G = false;
      }
      if (initObj.hasOwnProperty('PI1')) {
        this.PI1 = initObj.PI1
      }
      else {
        this.PI1 = false;
      }
      if (initObj.hasOwnProperty('PI2')) {
        this.PI2 = initObj.PI2
      }
      else {
        this.PI2 = false;
      }
      if (initObj.hasOwnProperty('PI7')) {
        this.PI7 = initObj.PI7
      }
      else {
        this.PI7 = false;
      }
      if (initObj.hasOwnProperty('PI8')) {
        this.PI8 = initObj.PI8
      }
      else {
        this.PI8 = false;
      }
      if (initObj.hasOwnProperty('D1')) {
        this.D1 = initObj.D1
      }
      else {
        this.D1 = false;
      }
      if (initObj.hasOwnProperty('D2')) {
        this.D2 = initObj.D2
      }
      else {
        this.D2 = false;
      }
      if (initObj.hasOwnProperty('D11')) {
        this.D11 = initObj.D11
      }
      else {
        this.D11 = false;
      }
      if (initObj.hasOwnProperty('D12')) {
        this.D12 = initObj.D12
      }
      else {
        this.D12 = false;
      }
      if (initObj.hasOwnProperty('V1')) {
        this.V1 = initObj.V1
      }
      else {
        this.V1 = false;
      }
      if (initObj.hasOwnProperty('V2')) {
        this.V2 = initObj.V2
      }
      else {
        this.V2 = false;
      }
      if (initObj.hasOwnProperty('V11')) {
        this.V11 = initObj.V11
      }
      else {
        this.V11 = false;
      }
      if (initObj.hasOwnProperty('V12')) {
        this.V12 = initObj.V12
      }
      else {
        this.V12 = false;
      }
      if (initObj.hasOwnProperty('PS1')) {
        this.PS1 = initObj.PS1
      }
      else {
        this.PS1 = false;
      }
      if (initObj.hasOwnProperty('PS2')) {
        this.PS2 = initObj.PS2
      }
      else {
        this.PS2 = false;
      }
      if (initObj.hasOwnProperty('PS3')) {
        this.PS3 = initObj.PS3
      }
      else {
        this.PS3 = false;
      }
      if (initObj.hasOwnProperty('PS4')) {
        this.PS4 = initObj.PS4
      }
      else {
        this.PS4 = false;
      }
      if (initObj.hasOwnProperty('PS5')) {
        this.PS5 = initObj.PS5
      }
      else {
        this.PS5 = false;
      }
      if (initObj.hasOwnProperty('PS20')) {
        this.PS20 = initObj.PS20
      }
      else {
        this.PS20 = false;
      }
      if (initObj.hasOwnProperty('PS21')) {
        this.PS21 = initObj.PS21
      }
      else {
        this.PS21 = false;
      }
      if (initObj.hasOwnProperty('PS22')) {
        this.PS22 = initObj.PS22
      }
      else {
        this.PS22 = false;
      }
      if (initObj.hasOwnProperty('PS23')) {
        this.PS23 = initObj.PS23
      }
      else {
        this.PS23 = false;
      }
      if (initObj.hasOwnProperty('PS24')) {
        this.PS24 = initObj.PS24
      }
      else {
        this.PS24 = false;
      }
      if (initObj.hasOwnProperty('D1D')) {
        this.D1D = initObj.D1D
      }
      else {
        this.D1D = false;
      }
      if (initObj.hasOwnProperty('D2D')) {
        this.D2D = initObj.D2D
      }
      else {
        this.D2D = false;
      }
      if (initObj.hasOwnProperty('D11D')) {
        this.D11D = initObj.D11D
      }
      else {
        this.D11D = false;
      }
      if (initObj.hasOwnProperty('D12D')) {
        this.D12D = initObj.D12D
      }
      else {
        this.D12D = false;
      }
      if (initObj.hasOwnProperty('D1G')) {
        this.D1G = initObj.D1G
      }
      else {
        this.D1G = false;
      }
      if (initObj.hasOwnProperty('D2G')) {
        this.D2G = initObj.D2G
      }
      else {
        this.D2G = false;
      }
      if (initObj.hasOwnProperty('D11G')) {
        this.D11G = initObj.D11G
      }
      else {
        this.D11G = false;
      }
      if (initObj.hasOwnProperty('D12G')) {
        this.D12G = initObj.D12G
      }
      else {
        this.D12G = false;
      }
      if (initObj.hasOwnProperty('CPI1')) {
        this.CPI1 = initObj.CPI1
      }
      else {
        this.CPI1 = false;
      }
      if (initObj.hasOwnProperty('CPI2')) {
        this.CPI2 = initObj.CPI2
      }
      else {
        this.CPI2 = false;
      }
      if (initObj.hasOwnProperty('CPI7')) {
        this.CPI7 = initObj.CPI7
      }
      else {
        this.CPI7 = false;
      }
      if (initObj.hasOwnProperty('CPI8')) {
        this.CPI8 = initObj.CPI8
      }
      else {
        this.CPI8 = false;
      }
      if (initObj.hasOwnProperty('CP1')) {
        this.CP1 = initObj.CP1
      }
      else {
        this.CP1 = false;
      }
      if (initObj.hasOwnProperty('CP2')) {
        this.CP2 = initObj.CP2
      }
      else {
        this.CP2 = false;
      }
      if (initObj.hasOwnProperty('CP9')) {
        this.CP9 = initObj.CP9
      }
      else {
        this.CP9 = false;
      }
      if (initObj.hasOwnProperty('CP10')) {
        this.CP10 = initObj.CP10
      }
      else {
        this.CP10 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Retour_navette
    // Serialize message field [ST1]
    bufferOffset = _serializer.bool(obj.ST1, buffer, bufferOffset);
    // Serialize message field [ST2]
    bufferOffset = _serializer.bool(obj.ST2, buffer, bufferOffset);
    // Serialize message field [ST3]
    bufferOffset = _serializer.bool(obj.ST3, buffer, bufferOffset);
    // Serialize message field [ST4]
    bufferOffset = _serializer.bool(obj.ST4, buffer, bufferOffset);
    // Serialize message field [ST5]
    bufferOffset = _serializer.bool(obj.ST5, buffer, bufferOffset);
    // Serialize message field [ST20]
    bufferOffset = _serializer.bool(obj.ST20, buffer, bufferOffset);
    // Serialize message field [ST21]
    bufferOffset = _serializer.bool(obj.ST21, buffer, bufferOffset);
    // Serialize message field [ST22]
    bufferOffset = _serializer.bool(obj.ST22, buffer, bufferOffset);
    // Serialize message field [ST23]
    bufferOffset = _serializer.bool(obj.ST23, buffer, bufferOffset);
    // Serialize message field [ST24]
    bufferOffset = _serializer.bool(obj.ST24, buffer, bufferOffset);
    // Serialize message field [R1D]
    bufferOffset = _serializer.bool(obj.R1D, buffer, bufferOffset);
    // Serialize message field [R2D]
    bufferOffset = _serializer.bool(obj.R2D, buffer, bufferOffset);
    // Serialize message field [R11D]
    bufferOffset = _serializer.bool(obj.R11D, buffer, bufferOffset);
    // Serialize message field [R12D]
    bufferOffset = _serializer.bool(obj.R12D, buffer, bufferOffset);
    // Serialize message field [R1G]
    bufferOffset = _serializer.bool(obj.R1G, buffer, bufferOffset);
    // Serialize message field [R2G]
    bufferOffset = _serializer.bool(obj.R2G, buffer, bufferOffset);
    // Serialize message field [R11G]
    bufferOffset = _serializer.bool(obj.R11G, buffer, bufferOffset);
    // Serialize message field [R12G]
    bufferOffset = _serializer.bool(obj.R12G, buffer, bufferOffset);
    // Serialize message field [PI1]
    bufferOffset = _serializer.bool(obj.PI1, buffer, bufferOffset);
    // Serialize message field [PI2]
    bufferOffset = _serializer.bool(obj.PI2, buffer, bufferOffset);
    // Serialize message field [PI7]
    bufferOffset = _serializer.bool(obj.PI7, buffer, bufferOffset);
    // Serialize message field [PI8]
    bufferOffset = _serializer.bool(obj.PI8, buffer, bufferOffset);
    // Serialize message field [D1]
    bufferOffset = _serializer.bool(obj.D1, buffer, bufferOffset);
    // Serialize message field [D2]
    bufferOffset = _serializer.bool(obj.D2, buffer, bufferOffset);
    // Serialize message field [D11]
    bufferOffset = _serializer.bool(obj.D11, buffer, bufferOffset);
    // Serialize message field [D12]
    bufferOffset = _serializer.bool(obj.D12, buffer, bufferOffset);
    // Serialize message field [V1]
    bufferOffset = _serializer.bool(obj.V1, buffer, bufferOffset);
    // Serialize message field [V2]
    bufferOffset = _serializer.bool(obj.V2, buffer, bufferOffset);
    // Serialize message field [V11]
    bufferOffset = _serializer.bool(obj.V11, buffer, bufferOffset);
    // Serialize message field [V12]
    bufferOffset = _serializer.bool(obj.V12, buffer, bufferOffset);
    // Serialize message field [PS1]
    bufferOffset = _serializer.bool(obj.PS1, buffer, bufferOffset);
    // Serialize message field [PS2]
    bufferOffset = _serializer.bool(obj.PS2, buffer, bufferOffset);
    // Serialize message field [PS3]
    bufferOffset = _serializer.bool(obj.PS3, buffer, bufferOffset);
    // Serialize message field [PS4]
    bufferOffset = _serializer.bool(obj.PS4, buffer, bufferOffset);
    // Serialize message field [PS5]
    bufferOffset = _serializer.bool(obj.PS5, buffer, bufferOffset);
    // Serialize message field [PS20]
    bufferOffset = _serializer.bool(obj.PS20, buffer, bufferOffset);
    // Serialize message field [PS21]
    bufferOffset = _serializer.bool(obj.PS21, buffer, bufferOffset);
    // Serialize message field [PS22]
    bufferOffset = _serializer.bool(obj.PS22, buffer, bufferOffset);
    // Serialize message field [PS23]
    bufferOffset = _serializer.bool(obj.PS23, buffer, bufferOffset);
    // Serialize message field [PS24]
    bufferOffset = _serializer.bool(obj.PS24, buffer, bufferOffset);
    // Serialize message field [D1D]
    bufferOffset = _serializer.bool(obj.D1D, buffer, bufferOffset);
    // Serialize message field [D2D]
    bufferOffset = _serializer.bool(obj.D2D, buffer, bufferOffset);
    // Serialize message field [D11D]
    bufferOffset = _serializer.bool(obj.D11D, buffer, bufferOffset);
    // Serialize message field [D12D]
    bufferOffset = _serializer.bool(obj.D12D, buffer, bufferOffset);
    // Serialize message field [D1G]
    bufferOffset = _serializer.bool(obj.D1G, buffer, bufferOffset);
    // Serialize message field [D2G]
    bufferOffset = _serializer.bool(obj.D2G, buffer, bufferOffset);
    // Serialize message field [D11G]
    bufferOffset = _serializer.bool(obj.D11G, buffer, bufferOffset);
    // Serialize message field [D12G]
    bufferOffset = _serializer.bool(obj.D12G, buffer, bufferOffset);
    // Serialize message field [CPI1]
    bufferOffset = _serializer.bool(obj.CPI1, buffer, bufferOffset);
    // Serialize message field [CPI2]
    bufferOffset = _serializer.bool(obj.CPI2, buffer, bufferOffset);
    // Serialize message field [CPI7]
    bufferOffset = _serializer.bool(obj.CPI7, buffer, bufferOffset);
    // Serialize message field [CPI8]
    bufferOffset = _serializer.bool(obj.CPI8, buffer, bufferOffset);
    // Serialize message field [CP1]
    bufferOffset = _serializer.bool(obj.CP1, buffer, bufferOffset);
    // Serialize message field [CP2]
    bufferOffset = _serializer.bool(obj.CP2, buffer, bufferOffset);
    // Serialize message field [CP9]
    bufferOffset = _serializer.bool(obj.CP9, buffer, bufferOffset);
    // Serialize message field [CP10]
    bufferOffset = _serializer.bool(obj.CP10, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Retour_navette
    let len;
    let data = new Retour_navette(null);
    // Deserialize message field [ST1]
    data.ST1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST2]
    data.ST2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST3]
    data.ST3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST4]
    data.ST4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST5]
    data.ST5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST20]
    data.ST20 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST21]
    data.ST21 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST22]
    data.ST22 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST23]
    data.ST23 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ST24]
    data.ST24 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R1D]
    data.R1D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R2D]
    data.R2D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R11D]
    data.R11D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R12D]
    data.R12D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R1G]
    data.R1G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R2G]
    data.R2G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R11G]
    data.R11G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R12G]
    data.R12G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PI1]
    data.PI1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PI2]
    data.PI2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PI7]
    data.PI7 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PI8]
    data.PI8 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D1]
    data.D1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D2]
    data.D2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D11]
    data.D11 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D12]
    data.D12 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [V1]
    data.V1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [V2]
    data.V2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [V11]
    data.V11 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [V12]
    data.V12 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS1]
    data.PS1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS2]
    data.PS2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS3]
    data.PS3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS4]
    data.PS4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS5]
    data.PS5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS20]
    data.PS20 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS21]
    data.PS21 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS22]
    data.PS22 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS23]
    data.PS23 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PS24]
    data.PS24 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D1D]
    data.D1D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D2D]
    data.D2D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D11D]
    data.D11D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D12D]
    data.D12D = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D1G]
    data.D1G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D2G]
    data.D2G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D11G]
    data.D11G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D12G]
    data.D12G = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CPI1]
    data.CPI1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CPI2]
    data.CPI2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CPI7]
    data.CPI7 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CPI8]
    data.CPI8 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CP1]
    data.CP1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CP2]
    data.CP2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CP9]
    data.CP9 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CP10]
    data.CP10 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com_arm/Retour_navette';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eac7c5db26c2bd4eb38c8c1df4b60f0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ST1
    bool ST2
    bool ST3
    bool ST4
    bool ST5
    bool ST20
    bool ST21
    bool ST22
    bool ST23
    bool ST24
    bool R1D
    bool R2D
    bool R11D
    bool R12D
    bool R1G
    bool R2G
    bool R11G
    bool R12G
    bool PI1
    bool PI2
    bool PI7
    bool PI8
    bool D1
    bool D2
    bool D11
    bool D12
    bool V1
    bool V2
    bool V11
    bool V12
    bool PS1
    bool PS2
    bool PS3
    bool PS4
    bool PS5
    bool PS20
    bool PS21
    bool PS22
    bool PS23
    bool PS24
    bool D1D
    bool D2D
    bool D11D
    bool D12D
    bool D1G
    bool D2G
    bool D11G
    bool D12G
    bool CPI1
    bool CPI2
    bool CPI7
    bool CPI8
    bool CP1
    bool CP2
    bool CP9
    bool CP10
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Retour_navette(null);
    if (msg.ST1 !== undefined) {
      resolved.ST1 = msg.ST1;
    }
    else {
      resolved.ST1 = false
    }

    if (msg.ST2 !== undefined) {
      resolved.ST2 = msg.ST2;
    }
    else {
      resolved.ST2 = false
    }

    if (msg.ST3 !== undefined) {
      resolved.ST3 = msg.ST3;
    }
    else {
      resolved.ST3 = false
    }

    if (msg.ST4 !== undefined) {
      resolved.ST4 = msg.ST4;
    }
    else {
      resolved.ST4 = false
    }

    if (msg.ST5 !== undefined) {
      resolved.ST5 = msg.ST5;
    }
    else {
      resolved.ST5 = false
    }

    if (msg.ST20 !== undefined) {
      resolved.ST20 = msg.ST20;
    }
    else {
      resolved.ST20 = false
    }

    if (msg.ST21 !== undefined) {
      resolved.ST21 = msg.ST21;
    }
    else {
      resolved.ST21 = false
    }

    if (msg.ST22 !== undefined) {
      resolved.ST22 = msg.ST22;
    }
    else {
      resolved.ST22 = false
    }

    if (msg.ST23 !== undefined) {
      resolved.ST23 = msg.ST23;
    }
    else {
      resolved.ST23 = false
    }

    if (msg.ST24 !== undefined) {
      resolved.ST24 = msg.ST24;
    }
    else {
      resolved.ST24 = false
    }

    if (msg.R1D !== undefined) {
      resolved.R1D = msg.R1D;
    }
    else {
      resolved.R1D = false
    }

    if (msg.R2D !== undefined) {
      resolved.R2D = msg.R2D;
    }
    else {
      resolved.R2D = false
    }

    if (msg.R11D !== undefined) {
      resolved.R11D = msg.R11D;
    }
    else {
      resolved.R11D = false
    }

    if (msg.R12D !== undefined) {
      resolved.R12D = msg.R12D;
    }
    else {
      resolved.R12D = false
    }

    if (msg.R1G !== undefined) {
      resolved.R1G = msg.R1G;
    }
    else {
      resolved.R1G = false
    }

    if (msg.R2G !== undefined) {
      resolved.R2G = msg.R2G;
    }
    else {
      resolved.R2G = false
    }

    if (msg.R11G !== undefined) {
      resolved.R11G = msg.R11G;
    }
    else {
      resolved.R11G = false
    }

    if (msg.R12G !== undefined) {
      resolved.R12G = msg.R12G;
    }
    else {
      resolved.R12G = false
    }

    if (msg.PI1 !== undefined) {
      resolved.PI1 = msg.PI1;
    }
    else {
      resolved.PI1 = false
    }

    if (msg.PI2 !== undefined) {
      resolved.PI2 = msg.PI2;
    }
    else {
      resolved.PI2 = false
    }

    if (msg.PI7 !== undefined) {
      resolved.PI7 = msg.PI7;
    }
    else {
      resolved.PI7 = false
    }

    if (msg.PI8 !== undefined) {
      resolved.PI8 = msg.PI8;
    }
    else {
      resolved.PI8 = false
    }

    if (msg.D1 !== undefined) {
      resolved.D1 = msg.D1;
    }
    else {
      resolved.D1 = false
    }

    if (msg.D2 !== undefined) {
      resolved.D2 = msg.D2;
    }
    else {
      resolved.D2 = false
    }

    if (msg.D11 !== undefined) {
      resolved.D11 = msg.D11;
    }
    else {
      resolved.D11 = false
    }

    if (msg.D12 !== undefined) {
      resolved.D12 = msg.D12;
    }
    else {
      resolved.D12 = false
    }

    if (msg.V1 !== undefined) {
      resolved.V1 = msg.V1;
    }
    else {
      resolved.V1 = false
    }

    if (msg.V2 !== undefined) {
      resolved.V2 = msg.V2;
    }
    else {
      resolved.V2 = false
    }

    if (msg.V11 !== undefined) {
      resolved.V11 = msg.V11;
    }
    else {
      resolved.V11 = false
    }

    if (msg.V12 !== undefined) {
      resolved.V12 = msg.V12;
    }
    else {
      resolved.V12 = false
    }

    if (msg.PS1 !== undefined) {
      resolved.PS1 = msg.PS1;
    }
    else {
      resolved.PS1 = false
    }

    if (msg.PS2 !== undefined) {
      resolved.PS2 = msg.PS2;
    }
    else {
      resolved.PS2 = false
    }

    if (msg.PS3 !== undefined) {
      resolved.PS3 = msg.PS3;
    }
    else {
      resolved.PS3 = false
    }

    if (msg.PS4 !== undefined) {
      resolved.PS4 = msg.PS4;
    }
    else {
      resolved.PS4 = false
    }

    if (msg.PS5 !== undefined) {
      resolved.PS5 = msg.PS5;
    }
    else {
      resolved.PS5 = false
    }

    if (msg.PS20 !== undefined) {
      resolved.PS20 = msg.PS20;
    }
    else {
      resolved.PS20 = false
    }

    if (msg.PS21 !== undefined) {
      resolved.PS21 = msg.PS21;
    }
    else {
      resolved.PS21 = false
    }

    if (msg.PS22 !== undefined) {
      resolved.PS22 = msg.PS22;
    }
    else {
      resolved.PS22 = false
    }

    if (msg.PS23 !== undefined) {
      resolved.PS23 = msg.PS23;
    }
    else {
      resolved.PS23 = false
    }

    if (msg.PS24 !== undefined) {
      resolved.PS24 = msg.PS24;
    }
    else {
      resolved.PS24 = false
    }

    if (msg.D1D !== undefined) {
      resolved.D1D = msg.D1D;
    }
    else {
      resolved.D1D = false
    }

    if (msg.D2D !== undefined) {
      resolved.D2D = msg.D2D;
    }
    else {
      resolved.D2D = false
    }

    if (msg.D11D !== undefined) {
      resolved.D11D = msg.D11D;
    }
    else {
      resolved.D11D = false
    }

    if (msg.D12D !== undefined) {
      resolved.D12D = msg.D12D;
    }
    else {
      resolved.D12D = false
    }

    if (msg.D1G !== undefined) {
      resolved.D1G = msg.D1G;
    }
    else {
      resolved.D1G = false
    }

    if (msg.D2G !== undefined) {
      resolved.D2G = msg.D2G;
    }
    else {
      resolved.D2G = false
    }

    if (msg.D11G !== undefined) {
      resolved.D11G = msg.D11G;
    }
    else {
      resolved.D11G = false
    }

    if (msg.D12G !== undefined) {
      resolved.D12G = msg.D12G;
    }
    else {
      resolved.D12G = false
    }

    if (msg.CPI1 !== undefined) {
      resolved.CPI1 = msg.CPI1;
    }
    else {
      resolved.CPI1 = false
    }

    if (msg.CPI2 !== undefined) {
      resolved.CPI2 = msg.CPI2;
    }
    else {
      resolved.CPI2 = false
    }

    if (msg.CPI7 !== undefined) {
      resolved.CPI7 = msg.CPI7;
    }
    else {
      resolved.CPI7 = false
    }

    if (msg.CPI8 !== undefined) {
      resolved.CPI8 = msg.CPI8;
    }
    else {
      resolved.CPI8 = false
    }

    if (msg.CP1 !== undefined) {
      resolved.CP1 = msg.CP1;
    }
    else {
      resolved.CP1 = false
    }

    if (msg.CP2 !== undefined) {
      resolved.CP2 = msg.CP2;
    }
    else {
      resolved.CP2 = false
    }

    if (msg.CP9 !== undefined) {
      resolved.CP9 = msg.CP9;
    }
    else {
      resolved.CP9 = false
    }

    if (msg.CP10 !== undefined) {
      resolved.CP10 = msg.CP10;
    }
    else {
      resolved.CP10 = false
    }

    return resolved;
    }
};

module.exports = Retour_navette;

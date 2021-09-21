# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from com_arm/State.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class State(genpy.Message):
  _md5sum = "3442225a740fff286fb5123e1a12991a"
  _type = "com_arm/State"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 isPowered
int32 isCalibrated
int32 workingMode
int32 esStatus
int32 moniteurSpeed
int32 shoulder
int32 elbow
int32 wrist
int32 isSettled
int32 flag
"""
  __slots__ = ['isPowered','isCalibrated','workingMode','esStatus','moniteurSpeed','shoulder','elbow','wrist','isSettled','flag']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       isPowered,isCalibrated,workingMode,esStatus,moniteurSpeed,shoulder,elbow,wrist,isSettled,flag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(State, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.isPowered is None:
        self.isPowered = 0
      if self.isCalibrated is None:
        self.isCalibrated = 0
      if self.workingMode is None:
        self.workingMode = 0
      if self.esStatus is None:
        self.esStatus = 0
      if self.moniteurSpeed is None:
        self.moniteurSpeed = 0
      if self.shoulder is None:
        self.shoulder = 0
      if self.elbow is None:
        self.elbow = 0
      if self.wrist is None:
        self.wrist = 0
      if self.isSettled is None:
        self.isSettled = 0
      if self.flag is None:
        self.flag = 0
    else:
      self.isPowered = 0
      self.isCalibrated = 0
      self.workingMode = 0
      self.esStatus = 0
      self.moniteurSpeed = 0
      self.shoulder = 0
      self.elbow = 0
      self.wrist = 0
      self.isSettled = 0
      self.flag = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_10i().pack(_x.isPowered, _x.isCalibrated, _x.workingMode, _x.esStatus, _x.moniteurSpeed, _x.shoulder, _x.elbow, _x.wrist, _x.isSettled, _x.flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.isPowered, _x.isCalibrated, _x.workingMode, _x.esStatus, _x.moniteurSpeed, _x.shoulder, _x.elbow, _x.wrist, _x.isSettled, _x.flag,) = _get_struct_10i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_10i().pack(_x.isPowered, _x.isCalibrated, _x.workingMode, _x.esStatus, _x.moniteurSpeed, _x.shoulder, _x.elbow, _x.wrist, _x.isSettled, _x.flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.isPowered, _x.isCalibrated, _x.workingMode, _x.esStatus, _x.moniteurSpeed, _x.shoulder, _x.elbow, _x.wrist, _x.isSettled, _x.flag,) = _get_struct_10i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10i = None
def _get_struct_10i():
    global _struct_10i
    if _struct_10i is None:
        _struct_10i = struct.Struct("<10i")
    return _struct_10i

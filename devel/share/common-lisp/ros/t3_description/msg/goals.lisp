; Auto-generated. Do not edit!


(cl:in-package t3_description-msg)


;//! \htmlinclude goals.msg.html

(cl:defclass <goals> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_list
    :reader goal_list
    :initarg :goal_list
    :type (cl:vector t3_description-msg:goal)
   :initform (cl:make-array 0 :element-type 't3_description-msg:goal :initial-element (cl:make-instance 't3_description-msg:goal))))
)

(cl:defclass goals (<goals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t3_description-msg:<goals> is deprecated: use t3_description-msg:goals instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <goals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t3_description-msg:header-val is deprecated.  Use t3_description-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_list-val :lambda-list '(m))
(cl:defmethod goal_list-val ((m <goals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t3_description-msg:goal_list-val is deprecated.  Use t3_description-msg:goal_list instead.")
  (goal_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goals>) ostream)
  "Serializes a message object of type '<goals>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goal_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goals>) istream)
  "Deserializes a message object of type '<goals>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 't3_description-msg:goal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goals>)))
  "Returns string type for a message object of type '<goals>"
  "t3_description/goals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goals)))
  "Returns string type for a message object of type 'goals"
  "t3_description/goals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goals>)))
  "Returns md5sum for a message object of type '<goals>"
  "acbe0f07c0aa4c7480edfbb28df6f816")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goals)))
  "Returns md5sum for a message object of type 'goals"
  "acbe0f07c0aa4c7480edfbb28df6f816")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goals>)))
  "Returns full string definition for message of type '<goals>"
  (cl:format cl:nil "std_msgs/Header header~%t3_description/goal[] goal_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: t3_description/goal~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goals)))
  "Returns full string definition for message of type 'goals"
  (cl:format cl:nil "std_msgs/Header header~%t3_description/goal[] goal_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: t3_description/goal~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goals>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goals>))
  "Converts a ROS message object to a list"
  (cl:list 'goals
    (cl:cons ':header (header msg))
    (cl:cons ':goal_list (goal_list msg))
))

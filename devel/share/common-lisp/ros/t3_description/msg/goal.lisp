; Auto-generated. Do not edit!


(cl:in-package t3_description-msg)


;//! \htmlinclude goal.msg.html

(cl:defclass <goal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass goal (<goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t3_description-msg:<goal> is deprecated: use t3_description-msg:goal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t3_description-msg:x-val is deprecated.  Use t3_description-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t3_description-msg:y-val is deprecated.  Use t3_description-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t3_description-msg:z-val is deprecated.  Use t3_description-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goal>) ostream)
  "Serializes a message object of type '<goal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goal>) istream)
  "Deserializes a message object of type '<goal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goal>)))
  "Returns string type for a message object of type '<goal>"
  "t3_description/goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal)))
  "Returns string type for a message object of type 'goal"
  "t3_description/goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goal>)))
  "Returns md5sum for a message object of type '<goal>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goal)))
  "Returns md5sum for a message object of type 'goal"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goal>)))
  "Returns full string definition for message of type '<goal>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goal)))
  "Returns full string definition for message of type 'goal"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goal>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goal>))
  "Converts a ROS message object to a list"
  (cl:list 'goal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))

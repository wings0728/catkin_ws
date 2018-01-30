;; Auto-generated. Do not edit!


(when (boundp 't3_description::goals)
  (if (not (find-package "T3_DESCRIPTION"))
    (make-package "T3_DESCRIPTION"))
  (shadow 'goals (find-package "T3_DESCRIPTION")))
(unless (find-package "T3_DESCRIPTION::GOALS")
  (make-package "T3_DESCRIPTION::GOALS"))

(in-package "ROS")
;;//! \htmlinclude goals.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass t3_description::goals
  :super ros::object
  :slots (_header _goal_list ))

(defmethod t3_description::goals
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_list __goal_list) (let (r) (dotimes (i 0) (push (instance t3_description::goal :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_list __goal_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_list
   (&rest __goal_list)
   (if (keywordp (car __goal_list))
       (send* _goal_list __goal_list)
     (progn
       (if __goal_list (setq _goal_list (car __goal_list)))
       _goal_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; t3_description/goal[] _goal_list
    (apply #'+ (send-all _goal_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; t3_description/goal[] _goal_list
     (write-long (length _goal_list) s)
     (dolist (elem _goal_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; t3_description/goal[] _goal_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_list (let (r) (dotimes (i n) (push (instance t3_description::goal :init) r)) r))
     (dolist (elem- _goal_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get t3_description::goals :md5sum-) "acbe0f07c0aa4c7480edfbb28df6f816")
(setf (get t3_description::goals :datatype-) "t3_description/goals")
(setf (get t3_description::goals :definition-)
      "std_msgs/Header header
t3_description/goal[] goal_list

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: t3_description/goal
float32 x
float32 y
float32 z

")



(provide :t3_description/goals "acbe0f07c0aa4c7480edfbb28df6f816")



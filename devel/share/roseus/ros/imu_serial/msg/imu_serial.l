;; Auto-generated. Do not edit!


(when (boundp 'imu_serial::imu_serial)
  (if (not (find-package "IMU_SERIAL"))
    (make-package "IMU_SERIAL"))
  (shadow 'imu_serial (find-package "IMU_SERIAL")))
(unless (find-package "IMU_SERIAL::IMU_SERIAL")
  (make-package "IMU_SERIAL::IMU_SERIAL"))

(in-package "ROS")
;;//! \htmlinclude imu_serial.msg.html


(defclass imu_serial::imu_serial
  :super ros::object
  :slots (_roll _pitch _yaw _acc_x _acc_y _acc_z _gyro_x _gyro_y _gyro_z ))

(defmethod imu_serial::imu_serial
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:serialization-length
   ()
   (+
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _acc_z
    4
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_z
     (setq _acc_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get imu_serial::imu_serial :md5sum-) "363773b161b4ac96d1ac5c46ff66e1df")
(setf (get imu_serial::imu_serial :datatype-) "imu_serial/imu_serial")
(setf (get imu_serial::imu_serial :definition-)
      "float32 roll
float32 pitch
float32 yaw
float32 acc_x
float32 acc_y
float32 acc_z
float32 gyro_x
float32 gyro_y
float32 gyro_z
")



(provide :imu_serial/imu_serial "363773b161b4ac96d1ac5c46ff66e1df")



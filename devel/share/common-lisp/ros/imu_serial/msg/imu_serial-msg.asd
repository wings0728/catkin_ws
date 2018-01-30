
(cl:in-package :asdf)

(defsystem "imu_serial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "imu_serial" :depends-on ("_package_imu_serial"))
    (:file "_package_imu_serial" :depends-on ("_package"))
  ))
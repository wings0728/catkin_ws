
(cl:in-package :asdf)

(defsystem "t3_description-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "goal" :depends-on ("_package_goal"))
    (:file "_package_goal" :depends-on ("_package"))
    (:file "goals" :depends-on ("_package_goals"))
    (:file "_package_goals" :depends-on ("_package"))
  ))
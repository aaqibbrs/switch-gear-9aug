
(cl:in-package :asdf)

(defsystem "karcher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bothlidar" :depends-on ("_package_bothlidar"))
    (:file "_package_bothlidar" :depends-on ("_package"))
  ))
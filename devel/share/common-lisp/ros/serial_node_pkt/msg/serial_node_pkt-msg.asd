
(cl:in-package :asdf)

(defsystem "serial_node_pkt-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "serial_massage" :depends-on ("_package_serial_massage"))
    (:file "_package_serial_massage" :depends-on ("_package"))
  ))
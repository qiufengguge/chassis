;; Auto-generated. Do not edit!


(when (boundp 'serial_node_pkt::serial_massage)
  (if (not (find-package "SERIAL_NODE_PKT"))
    (make-package "SERIAL_NODE_PKT"))
  (shadow 'serial_massage (find-package "SERIAL_NODE_PKT")))
(unless (find-package "SERIAL_NODE_PKT::SERIAL_MASSAGE")
  (make-package "SERIAL_NODE_PKT::SERIAL_MASSAGE"))

(in-package "ROS")
;;//! \htmlinclude serial_massage.msg.html


(defclass serial_node_pkt::serial_massage
  :super ros::object
  :slots (_data _data_two ))

(defmethod serial_node_pkt::serial_massage
  (:init
   (&key
    ((:data __data) "")
    ((:data_two __data_two) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _data_two (string __data_two))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:data_two
   (&optional __data_two)
   (if __data_two (setq _data_two __data_two)) _data_two)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _data_two
    4 (length _data_two)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _data_two
       (write-long (length _data_two) s) (princ _data_two s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data_two
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_two (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get serial_node_pkt::serial_massage :md5sum-) "8fd29414c00de9e0c5d9c3a1ce7ea153")
(setf (get serial_node_pkt::serial_massage :datatype-) "serial_node_pkt/serial_massage")
(setf (get serial_node_pkt::serial_massage :definition-)
      "string data
string data_two
")



(provide :serial_node_pkt/serial_massage "8fd29414c00de9e0c5d9c3a1ce7ea153")



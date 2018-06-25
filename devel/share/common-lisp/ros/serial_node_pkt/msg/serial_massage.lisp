; Auto-generated. Do not edit!


(cl:in-package serial_node_pkt-msg)


;//! \htmlinclude serial_massage.msg.html

(cl:defclass <serial_massage> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (data_two
    :reader data_two
    :initarg :data_two
    :type cl:string
    :initform ""))
)

(cl:defclass serial_massage (<serial_massage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_massage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_massage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_node_pkt-msg:<serial_massage> is deprecated: use serial_node_pkt-msg:serial_massage instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <serial_massage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_node_pkt-msg:data-val is deprecated.  Use serial_node_pkt-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'data_two-val :lambda-list '(m))
(cl:defmethod data_two-val ((m <serial_massage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_node_pkt-msg:data_two-val is deprecated.  Use serial_node_pkt-msg:data_two instead.")
  (data_two m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_massage>) ostream)
  "Serializes a message object of type '<serial_massage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_two))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_two))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_massage>) istream)
  "Deserializes a message object of type '<serial_massage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_two) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_two) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_massage>)))
  "Returns string type for a message object of type '<serial_massage>"
  "serial_node_pkt/serial_massage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_massage)))
  "Returns string type for a message object of type 'serial_massage"
  "serial_node_pkt/serial_massage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_massage>)))
  "Returns md5sum for a message object of type '<serial_massage>"
  "8fd29414c00de9e0c5d9c3a1ce7ea153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_massage)))
  "Returns md5sum for a message object of type 'serial_massage"
  "8fd29414c00de9e0c5d9c3a1ce7ea153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_massage>)))
  "Returns full string definition for message of type '<serial_massage>"
  (cl:format cl:nil "string data~%string data_two~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_massage)))
  "Returns full string definition for message of type 'serial_massage"
  (cl:format cl:nil "string data~%string data_two~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_massage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'data_two))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_massage>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_massage
    (cl:cons ':data (data msg))
    (cl:cons ':data_two (data_two msg))
))

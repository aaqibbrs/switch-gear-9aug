; Auto-generated. Do not edit!


(cl:in-package karcher-msg)


;//! \htmlinclude bothlidar.msg.html

(cl:defclass <bothlidar> (roslisp-msg-protocol:ros-message)
  ((above
    :reader above
    :initarg :above
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (slant
    :reader slant
    :initarg :slant
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass bothlidar (<bothlidar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bothlidar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bothlidar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name karcher-msg:<bothlidar> is deprecated: use karcher-msg:bothlidar instead.")))

(cl:ensure-generic-function 'above-val :lambda-list '(m))
(cl:defmethod above-val ((m <bothlidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader karcher-msg:above-val is deprecated.  Use karcher-msg:above instead.")
  (above m))

(cl:ensure-generic-function 'slant-val :lambda-list '(m))
(cl:defmethod slant-val ((m <bothlidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader karcher-msg:slant-val is deprecated.  Use karcher-msg:slant instead.")
  (slant m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bothlidar>) ostream)
  "Serializes a message object of type '<bothlidar>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'above))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'above))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'slant))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bothlidar>) istream)
  "Deserializes a message object of type '<bothlidar>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'above) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'above)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slant) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slant)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bothlidar>)))
  "Returns string type for a message object of type '<bothlidar>"
  "karcher/bothlidar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bothlidar)))
  "Returns string type for a message object of type 'bothlidar"
  "karcher/bothlidar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bothlidar>)))
  "Returns md5sum for a message object of type '<bothlidar>"
  "32fad128505ad63538e8c4cc9e9a6dbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bothlidar)))
  "Returns md5sum for a message object of type 'bothlidar"
  "32fad128505ad63538e8c4cc9e9a6dbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bothlidar>)))
  "Returns full string definition for message of type '<bothlidar>"
  (cl:format cl:nil "float32[] above~%float32[] slant~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bothlidar)))
  "Returns full string definition for message of type 'bothlidar"
  (cl:format cl:nil "float32[] above~%float32[] slant~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bothlidar>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'above) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slant) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bothlidar>))
  "Converts a ROS message object to a list"
  (cl:list 'bothlidar
    (cl:cons ':above (above msg))
    (cl:cons ':slant (slant msg))
))

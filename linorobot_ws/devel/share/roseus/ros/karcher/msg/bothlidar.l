;; Auto-generated. Do not edit!


(when (boundp 'karcher::bothlidar)
  (if (not (find-package "KARCHER"))
    (make-package "KARCHER"))
  (shadow 'bothlidar (find-package "KARCHER")))
(unless (find-package "KARCHER::BOTHLIDAR")
  (make-package "KARCHER::BOTHLIDAR"))

(in-package "ROS")
;;//! \htmlinclude bothlidar.msg.html


(defclass karcher::bothlidar
  :super ros::object
  :slots (_above _slant ))

(defmethod karcher::bothlidar
  (:init
   (&key
    ((:above __above) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:slant __slant) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _above __above)
   (setq _slant __slant)
   self)
  (:above
   (&optional __above)
   (if __above (setq _above __above)) _above)
  (:slant
   (&optional __slant)
   (if __slant (setq _slant __slant)) _slant)
  (:serialization-length
   ()
   (+
    ;; float32[] _above
    (* 4    (length _above)) 4
    ;; float32[] _slant
    (* 4    (length _slant)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _above
     (write-long (length _above) s)
     (dotimes (i (length _above))
       (sys::poke (elt _above i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _slant
     (write-long (length _slant) s)
     (dotimes (i (length _slant))
       (sys::poke (elt _slant i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _above
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _above (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _above i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _slant
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slant (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _slant i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get karcher::bothlidar :md5sum-) "32fad128505ad63538e8c4cc9e9a6dbc")
(setf (get karcher::bothlidar :datatype-) "karcher/bothlidar")
(setf (get karcher::bothlidar :definition-)
      "float32[] above
float32[] slant
")



(provide :karcher/bothlidar "32fad128505ad63538e8c4cc9e9a6dbc")



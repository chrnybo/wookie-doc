(asdf:defsystem wookie-doc
  :author "Andrew Danger Lyon <orthecreedence@gmail.com>"
  :licence "MIT"
  :version "0.0.1"
  :depends-on (#:cl-fad #:cl-who #:markdown.cl #:cl-ppcre #:wookie)
  :components
  ((:file "package")
   (:file "config" :depends-on ("package"))
   (:file "util" :depends-on ("config"))
   (:file "template" :depends-on ("util"))
   (:file "init" :depends-on ("template"))
   (:file "routes" :depends-on ("init"))))


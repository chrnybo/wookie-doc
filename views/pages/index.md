---
title: Wookie: An asynchronous web server for Common Lisp
layout: default
---

Wookie - An asynchronous HTTP server
====================================
Wookie is an asynchronous HTTP server written in Common Lisp. It is built on top
of [cl-async](http://orthecreedence.github.com/cl-async) and
[http-parse](https://github.com/orthecreedence/http-parse).

*Wookie is very new and considered beta.*

See [Wookie's documentation](/docs).

```lisp
(defpackage :wookie-test
  (:use :cl :wookie))
(in-package :wookie-test)

;; load Wookie's core plugins
(load-plugins)

;; define our homepage route
(defroute (:get "/") (req res)
  (send-response res :body "Thanks for stopping by!"))

;; start serving requests!
(as:with-event-loop ()
  (start-server (make-instance 'listener :port 80)))
```
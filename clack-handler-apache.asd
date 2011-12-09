#|
  This file is a part of Clack package.
  URL: http://github.com/fukamachi/clack
  Copyright (c) 2011 Eitarow Fukamachi <e.arrows@gmail.com>

  Clack is freely distributable under the LLGPL License.
|#

#|
  Clack.Handler.Apache - Clack handler for Apache2 + mod_lisp.

  Author: Eitarow Fukamachi (e.arrows@gmail.com)
|#

(in-package :cl-user)
(defpackage :clack-handler-apache-asd
  (:use :cl :asdf))
(in-package :clack-handler-apache-asd)

(defsystem clack-handler-apache
  :version "11.12"
  :author "Eitarow Fukamachi"
  :license "LLGPL"
  :depends-on (:clack
               :cl-syntax
               :cl-syntax-annot
               #+(or allegro cmu lispworks sbcl)
               :modlisp
               :split-sequence
               :metabang-bind
               :anaphora)
  :components ((:file "src/core/handler/apache"))
  :description "Clack handler for Apache2 + mod_lisp.")
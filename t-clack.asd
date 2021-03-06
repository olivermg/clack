#|
  This file is a part of Clack package.
  URL: http://github.com/fukamachi/clack
  Copyright (c) 2011 Eitarow Fukamachi <e.arrows@gmail.com>

  Clack is freely distributable under the LLGPL License.
|#

#|
  Testing Clack.

  Author: Eitarow Fukamachi (e.arrows@gmail.com)
|#

(in-package :cl-user)
(defpackage t-clack-asd
  (:use :cl :asdf))
(in-package :t-clack-asd)

(defsystem t-clack
  :depends-on (:clack
               :clack-test
               :cl-test-more
               :bordeaux-threads
               :drakma)
  :components
  ((:module "t"
    :components
    ((:module "core"
      :components
      ((:test-file "component")
       (:test-file "middleware")
       (:test-file "builder")
       (:test-file "response")
       (:test-file "request")
       (:test-file "handler/hunchentoot")
       (:test-file "app/file")
       (:test-file "app/urlmap")
       (:test-file "middleware/static")
       (:test-file "middleware/conditional")
       (:test-file "middleware/session")
       (:test-file "middleware/logger")))
     (:module "util"
      :components
      ((:test-file "route"))))))

  :defsystem-depends-on (:cl-test-more)
  :perform (test-op :after (op c)
                    (funcall (intern #. (string :run-test-system) :cl-test-more)
                             c)))

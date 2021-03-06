#lang info

(define collection 'multi)

(define deps '("scheme-lib"
               "data-lib"
               "compiler-lib"
               ["base" #:version "6.2.900.15"]
               "planet-lib"
               "compatibility-lib"
               ["draw-lib" #:version "1.7"]
               "errortrace-lib"
               "macro-debugger-text-lib"
               "parser-tools-lib"
               "pconvert-lib"
               "pict-lib"
               "profile-lib"
               "sandbox-lib"
               ("scribble-lib" #:version "1.11")
               ("snip-lib" #:version "1.2")
               ("string-constants-lib" #:version "1.10")
               "typed-racket-lib"
               "wxme-lib"
               ("gui-lib" #:version "1.28")
               ("racket-index" #:version "1.2")
               "racket-doc"
               "html-lib"
               "images-lib"
               "icons"
               "typed-racket-more"
               "trace"
               "macro-debugger"
               "net-lib"
               "tex-table"
               ("drracket-plugin-lib" #:version "1.1")
               "gui-pkg-manager-lib"
               "drracket-tool-lib"
               "drracket-tool-doc"))
(define build-deps '("mzscheme-doc"
                     "net-doc"
                     "planet-doc"
                     "compatibility-doc"
                     "string-constants-doc"
                     "draw-doc"
                     "errortrace-doc"
                     "gui-doc"
                     "pict-doc"
                     "profile-doc"
                     "r5rs-doc"
                     "at-exp-lib"
                     "rackunit-lib"))

;; implies drracket-tool-lib so that others dependencies don't break
;; (redex, in particular, used to depend on drracket but it really
;; needs only the parts in drracket-tool-lib)
(define implies '("drracket-plugin-lib" "drracket-tool-lib"))

(define pkg-desc "The DrRacket programming environment")

(define pkg-authors '(robby))

(define version "1.4")

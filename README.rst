Synopsis
--------

Makefile-shell-backslash is an unimaginatively named emacs packages for
appending backslashes and/or semicolons to regions of shell-script within
Makefiles.


Usage
-----

Given the following Makefile extract, with the region between lines 4 and 12 selected:

.. code-block:: raw

   01  SHELL := /bin/bash
   02
   03  fizzbuzz:
   04      for i in {1..20}; do
   05          res=""
   06          if [[ $$((i % 3)) -eq 0 ]]; then
   07              res="Fizz"
   08          fi
   09          if [[ $$((i % 5)) -eq 0 ]]; then
   10              res+="Buzz"
   11          fi
   12          [[ -z "$${res}" ]] && res="$$i"
   13          echo -n "$${res} "
   14      done

* ``M-x RET makefile-shell-aligned-semicolon-backslash-region RET``

.. code-block:: make

   SHELL := /bin/bash

   fizzbuzz:
       for i in {1..20}; do                  \
           res=""                           ;\
           if [[ $$((i % 3)) -eq 0 ]]; then  \
               res="Fizz"                   ;\
           fi                               ;\
           if [[ $$((i % 5)) -eq 0 ]]; then  \
               res+="Buzz"                  ;\
           fi                               ;\
           [[ -z "$${res}" ]] && res="$$i"  ;\
           echo -n "$${res} "               ;\
       done


* ``M-x RET makefile-shell-semicolon-backslash-region RET``

.. code-block:: make

   SHELL := /bin/bash

   fizzbuzz:
       for i in {1..20}; do   \
           res=""  ;\
           if [[ $$((i % 3)) -eq 0 ]]; then   \
               res="Fizz"  ;\
           fi  ;\
           if [[ $$((i % 5)) -eq 0 ]]; then   \
               res+="Buzz"  ;\
           fi  ;\
           [[ -z "$${res}" ]] && res="$$i"  ;\
           echo -n "$${res} "  ;\
       done

* ``M-x RET makefile-delete-semicolon-backslash-region``

.. code-block:: make

   SHELL := /bin/bash

   fizzbuzz:
       for i in {1..20}; do
           res=""
           if [[ $$((i % 3)) -eq 0 ]]; then
               res="Fizz"
           fi
           if [[ $$((i % 5)) -eq 0 ]]; then
               res+="Buzz"
           fi
           [[ -z "$${res}" ]] && res="$$i"
           echo -n "$${res} "
       done


License
-------

Released under the terms of the GPLv3.

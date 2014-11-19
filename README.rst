Synopsis
--------

Makefile-shell-backslash is an unimaginatively named emacs packages
for appending backslashes and/or semicolons to regions of shell
script.

* ``Select region between lines 04 and 12.``

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


* ``M-x RET makefile-shell-aligned-semicolon-backslash-region RET``

.. code-block:: make

   SHELL := /bin/bash

   fizzbuzz:
       for i in {1..20}; do				     \
           res=""							;\
           if [[ $$((i % 3)) -eq 0 ]]; then	 \
               res="Fizz"					;\
           fi								;\
           if [[ $$((i % 5)) -eq 0 ]]; then	 \
               res+="Buzz"					;\
           fi								;\
           [[ -z "$${res}" ]] && res="$$i"	;\
           echo -n "$${res} "				;\
       done


* ``M-x RET makefile-shell-semicolon-backslash-region RET``

.. code-block:: make

   SHELL := /bin/bash

   fizzbuzz:
       for i in {1..20}; do   \
           res=""  ;\
           if [[ $$((i % 3)) -eq 0 ]]; then	  \
               res="Fizz"  ;\
           fi  ;\
           if [[ $$((i % 5)) -eq 0 ]]; then	  \
               res+="Buzz"	;\
           fi  ;\
           [[ -z "$${res}" ]] && res="$$i"	;\
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


Work in progress
----------------

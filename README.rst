Synopsis
--------

Makefile-shell-backslash is an unimaginatively named emacs packages
for appending backslashes and/or semicolons to regions of shell
script.

* ``Select region between lines 04 and 12.``

.. code-block:: make

   01 SHELL := /bin/bash
   02
   03 fizzbuzz:
   04     for i in {1..20}; do
   05         res=""
   06         if [[ $$((i % 3)) -eq 0 ]]; then
   07             res="Fizz"
   08         fi
   09         if [[ $$((i % 5)) -eq 0 ]]; then
   10             res+="Buzz"
   11         fi
   12         [[ -z "$${res}" ]] && res="$$i"
   13         echo -n "$${res} "
   14     done


* ``M-x RET makefile-shell-aligned-semicolon-backslash-region RET``

.. code-block:: make

   01 SHELL := /bin/bash
   02
   03 fizzbuzz:
   04     for i in {1..20}; do				     \
   05         res=""							;\
   06         if [[ $$((i % 3)) -eq 0 ]]; then	 \
   07             res="Fizz"					;\
   08         fi								;\
   09         if [[ $$((i % 5)) -eq 0 ]]; then	 \
   10             res+="Buzz"					;\
   11         fi								;\
   12         [[ -z "$${res}" ]] && res="$$i"	;\
   13         echo -n "$${res} "				;\
   14     done


* ``M-x RET makefile-shell-semicolon-backslash-region RET``

.. code-block:: make

   01 SHELL := /bin/bash
   02
   03 fizzbuzz:
   04     for i in {1..20}; do   \
   05         res=""  ;\
   06         if [[ $$((i % 3)) -eq 0 ]]; then	  \
   07             res="Fizz"  ;\
   08         fi  ;\
   09         if [[ $$((i % 5)) -eq 0 ]]; then	  \
   10             res+="Buzz"	;\
   11         fi  ;\
   12         [[ -z "$${res}" ]] && res="$$i"	;\
   13         echo -n "$${res} "  ;\
   14     done

* ``M-x RET makefile-delete-semicolon-backslash-region``

.. code-block:: make

   01 SHELL := /bin/bash
   02
   03 fizzbuzz:
   04     for i in {1..20}; do
   05         res=""
   06         if [[ $$((i % 3)) -eq 0 ]]; then
   07             res="Fizz"
   08         fi
   09         if [[ $$((i % 5)) -eq 0 ]]; then
   10             res+="Buzz"
   11         fi
   12         [[ -z "$${res}" ]] && res="$$i"
   13         echo -n "$${res} "
   14     done


Work in progress
----------------

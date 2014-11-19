SHELL := /bin/bash

test:
	emacs -batch -l ert -l tests.el -f ert-run-tests-batch-and-exit

fizzbuzz:
	@for i in {1..20}; do					 \
		res=""								;\
		if [[ $$((i % 3)) -eq 0 ]]; then	 \
			res="Fizz"						;\
		fi									;\
		if [[ $$((i % 5)) -eq 0 ]]; then	 \
			res+="Buzz"						;\
		fi									;\
		[[ -z "$${res}" ]] && res="$$i"		;\
		echo -n "$${res} "					;\
	done

PHONY: test fizzbuzz

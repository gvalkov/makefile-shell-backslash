(require 'ert)
(load-file "makefile-shell-backslash.el")

(ert-deftest test-semicolon-regex ()
  (let ((re makefile-rx-semicolon-backslash))
    (should (string-match re ";\\"))
    (should (string-match re ";  \\"))
    (should (string-match re "\\"))
    (should (string-match re "\\  "))
    (should (string-match re "  \\  "))
    (should (string-match re "  ;\\"))))

(defun run-with-temp-buffer (func start &rest args)
  (with-temp-buffer
    (insert start)
    (goto-char (point-min))
    (apply func args)
    (untabify (point-min) (point-max)) ; TODO:
    (buffer-string)))

(ert-deftest test-delete-semicolon-backslash ()
  (let ((func #'makefile-delete-semicolon-backslash))
    (should (string= (run-with-temp-buffer func "test \\")    "test"))
    (should (string= (run-with-temp-buffer func "test ;\\  ") "test"))
    (should (string= (run-with-temp-buffer func "  test ;") "  test ;"))))

(ert-deftest test-append-semicolon-backslash ()
  (let ((func #'makefile-append-semicolon-backslash))
    (should (string= (run-with-temp-buffer func "test"    10)   "test      ;\\"))
    (should (string= (run-with-temp-buffer func "test \\" 10 t) "test       \\"))
    (should (string= (run-with-temp-buffer func "test ; \\" 10) "test      ;\\"))))

(ert-deftest test-append-shell-semicolon-backslash ()
  (let ((func #'makefile-append-shell-semicolon-backslash))
    (should (string= (run-with-temp-buffer func "test" 10) "test      ;\\"))
    (should (string= (run-with-temp-buffer func "do"   10) "do         \\"))
    (should (string= (run-with-temp-buffer func "done" 10) "done       \\"))))

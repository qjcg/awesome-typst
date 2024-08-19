;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")

((markdown-mode . ((markdown-toc-user-toc-structure-manipulation-fn . (lambda (markdown-list)
									(let* ((remaining-list (cdr markdown-list))
									       (processed-list (mapcar (lambda (item)
													 (cons (1- (car item)) (cdr item)))
												       remaining-list)))
									  processed-list)))
								    (markdown-toc-indentation-space . 2)
								    (markdown-toc-header-toc-title . "## Contents"))))

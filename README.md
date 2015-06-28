* Introduction

Livecoding is a mechanism to update a running instance of lisp
on the fly as you code. The key is to do this in a thread that's
in a 'main loop' such as game loop.

Just call livecoding:live in the main loop. eg: -


    (defun main-loop ()
      (let ((running t))
        (loop while running do 
              ....
              (livecoding:live))))

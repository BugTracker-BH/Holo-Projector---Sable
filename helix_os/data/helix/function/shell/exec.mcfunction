# helix:shell/exec - Non-macro: call run (macro) then dispatch. Books call this via: /function helix:shell/exec {cmd:"ls",arg:""}
# BUT - this can't work because calling with {cmd,arg} makes THIS a macro too!
# SOLUTION: The books must call a SINGLE function that IS the macro AND does dispatch internally.
# MC 26.1.2 rule: $return run function CAN call a non-macro function if the LINE has a $(var).

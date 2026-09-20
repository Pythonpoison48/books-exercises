
set debug_mode 0
set debug_file "myfile.txt"


# our log procedure
proc log {text debug_mode debug_file} {
    if { $debug_mode == 1 } {
        # if we are debugging
        puts "debug mode on logging start"
        # we use string interpolation to create a
        # logging procedure redifining log
        # which will output text to the file we assigned to it on the first
        # call
        proc log {text} "
            set fp [open $debug_file w+]
            puts \$fp \$text
        "
        tailcall log $text

    } else {
        puts "debug mode off doing nothing"
        # if we are not in debug mode
        # log does nothing
        # we still take the same number of args
        # or else the program would fail
        proc log {text} {
            return
        }
        tailcall log $text
    }
}

# our initial call
log "My log" $debug_mode $debug_file

log "Test"

log "1 2 3"

#!/usr/bin/env tclsh

proc make_logger {logname} {

    proc logto$logname text "
        set fp [open $logname w+]
        puts \$fp \$text
    "

}

make_logger test_logger

logtotest_logger "my original text"
logtotest_logger "\n \n and another ! "

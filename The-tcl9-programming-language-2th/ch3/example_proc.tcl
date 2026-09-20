proc write_logs {filename} {
    set outfile1 [open $filename w+]
    puts $outfile1 "logs start"
    close $outfile1

    proc write_logs {filename } {
        set outfile1 [open $filename w+]
        puts $outfile1 "continue"
        close $outfile1
    }
    tailcall write_logs
}

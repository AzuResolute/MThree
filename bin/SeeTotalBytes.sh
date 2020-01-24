#!/bin/bash

ls -la |
awk '
        BEGIN   {sum = 0}
        NR >= 2 && /^-/ { sum = sum + $5 }
        END {print "sum: ", sum}

'

exit 0


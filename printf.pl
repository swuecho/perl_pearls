use v5.20;
printf '%2$05d %1$d', 12, 34;      # prints "34 12"
say;
printf '%3$d %d %1$d', 1, 2, 3;  # prints "3 1 1"
say;
#printf('%06x %1$06x', 555552555555555555555555);
say sprintf("%8.8x %08x", -1, 255);
say;
say;

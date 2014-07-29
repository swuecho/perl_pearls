 use charnames ':full';
 print "\N{GREEK SMALL LETTER SIGMA} is called sigma.\n";
 print "\N{LATIN CAPITAL LETTER E WITH VERTICAL LINE BELOW}",
       " is an officially named sequence of two Unicode characters\n";
 use charnames ':loose';
 print "\N{Greek small-letter  sigma}",
        "can be used to ignore case, underscores, most blanks,", 
        "and when you aren't sure if the official name has hyphens\n";

#! /usr/bin/env make
# Errors may occur in Windows
outcome.html: outcome.md VIEWSMapGridCell.png
	pandoc -s outcome.md --mathjax -f markdown+tex_math_dollars -t html -o outcome.html

outcome.md: $(files) new_line
	cat $(files) > $@

new_line:
	echo "\n" > new_line.txt
	
files = preamble.txt new_line.txt litReview.txt new_line.txt approach.txt new_line.txt results.txt new_line.txt conclusion.txt

.PHONY: clean
clean:
	-rm -rf outcome.md new_line.txt
	

#! /usr/bin/env make
convert:
	@pandoc -s preamble.txt litReview.txt approach.txt results.txt \
	conclusion.txt --mathjax -f markdown+tex_math_dollars \
	-t html -o outcome.html




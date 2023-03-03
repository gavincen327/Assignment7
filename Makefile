#! /usr/bin/env make
all: html pdf

html:
	@pandoc -s preamble.txt litReview.txt approach.txt results.txt \
	conclusion.txt --mathjax -f markdown+tex_math_dollars \
	-t html -o outcome.html

pdf:
	@pandoc -s preamble.txt litReview.txt approach.txt results.txt \
	conclusion.txt --mathjax -f markdown+tex_math_dollars \
	-V geometry:margin=1in \
	-t pdf -o outcome.pdf





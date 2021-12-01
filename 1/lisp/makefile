src = $(wildcard src/*.lisp)

run: $(src)
	sbcl --load 1.lisp --eval "(main ())" --eval "(quit)"

build: $(src)
	buildapp --load "1.lisp" --entry main --output 1

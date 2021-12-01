src = $(wildcard src/*.lisp)

run: $(src)
	sbcl --noinform --load $(HOME)/quicklisp/setup.lisp --load 1.lisp --eval "(main ())" --eval "(quit)"

build: $(src)
	buildapp --load "$(HOME)/quicklisp/setup.lisp" --load "1.lisp" --entry main --output 1

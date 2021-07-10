all: build
	latexmk -pdf -outdir=build -jobname=thesis thesis.tex

build:
	mkdir build

clean:
	rm -rf build

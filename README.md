# uk_thesis

An unofficial LaTeX thesis template for University of Kentucky graduate students.

The University of Kentucky provides lots of thesis templates and examples for Microsoft Word. Fight for your right to not use Word! Go open source and Linux!

What this repo provides:

- `uk_thesis.cls`, a LaTeX documentclass that is intended for any UK thesis student to use. This should ideally be able to handle any combination of configurations that a UK student would reasonably need for the thesis document (director, co-director, optional fields, etc.). To preserve sanity, this relies on `KomaScript`\: a package that provides versions of the well-loved, standard LaTeX documentclasses to start from that can actually be reasonably modified.
- A template (everything else). This includes document structure, recommended packages, example tables, figures, code listings, and the like.

## Get started

Fork the thing. This can conveniently be built with `latexmk`. LaTeX and `latexmk` should be installed and configured separately. Debian-based systems can do this all through `apt`. Alternatively, upload the files to Overleaf and let it magically work.

## Contributing

See [this page](CONTRIBUTING.md).

## `uk_thesis` interface documentation

See [this page](docs/uk_thesis_interface.md).

## Goals

I created this project when I wrote my thesis. The template is geared perhaps more towards computer science students. However, I wanted to (and did my best to) provide a documentclass that will work for all future UK graduate students who use this. 

This documentclass currently is geared towards thesis-option master's students in any major / college. However, I would like it to also apply to PhDs as well. I believe that the modifications necessary to do this are minimal. If you are a PhD student, I'd appreciate it if you create a pull request that contains a configuration for this (e.x. type: dissertation vs. type: thesis, and appropriate changes based on it).
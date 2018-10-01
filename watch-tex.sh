#!/bin/sh
while inotifywait -e modify document.tex; do
  pdflatex document.tex
done

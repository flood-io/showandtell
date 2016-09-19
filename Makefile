slides=stpcon
export slides

build:
	prez ${slides} ./${slides}/deck --title="Flood IO" --author="Flood IO" --description="Distributed load testing with Flood IO" --theme=league

local: build
	open index.html

live: build
	git diff --quiet HEAD && echo "Please commit your changes to branch gh-pages"
	open https://flood-io.github.io/showandtell

slides=roadtrip
export slides

build:
	prez ${slides} ./ --title="Flood IO" --theme=league

local: build
	open index.html

live: build
	git diff --quiet HEAD && echo "Please commit your changes to branch gh-pages"
	open https://flood-io.github.io/showandtell

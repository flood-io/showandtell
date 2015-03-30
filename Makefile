slides=roadtrip
export slides

build:
	prez ${slides} ./ --title="Flood IO" --theme=league

local: build
	open index.html

live: build
	git commit -am "pushing changes"
	git push origin gh-pages
	open https://flood-io.github.io/showandtell

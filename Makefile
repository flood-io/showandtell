deck=roadtrip
export deck

prez:
	prez ${deck} ./ --title="Flood IO" --theme=league

local: prez
	open index.html

live: prez
	git commit -am "pushing changes"
	git push origin gh-pages
	open https://flood-io.github.io/showandtell

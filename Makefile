deck=roadtrip
export deck

prez:
	prez ${deck} ./ --title="Flood IO" --theme=league && open index.html

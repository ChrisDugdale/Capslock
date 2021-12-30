cd:
	yq eval capslockdev.yml -j > capslockdev.json
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp capslockdev.json $$HOME/.config/karabiner/assets/complex_modifications/

compile:
	yq eval capslockremaps.yml -j > capslockremaps.json

install: compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp capslockremaps.json $$HOME/.config/karabiner/assets/complex_modifications/

all:
	mkdir -p $$HOME/.config/karabiner/
	cp karabiner.json $$HOME/.config/karabiner/

.PHONY: cd,compile,install,all
all: latex

latex: | build
	@lualatex --halt-on-error --interaction=nonstopmode --output-directory=build --draftmode main.tex
	@biber build/main.bcf
	@lualatex --halt-on-error --interaction=nonstopmode --output-directory=build main.tex

FORCE:

build:
	@mkdir -p build/

clean:
	@rm -rf build/

figures: figures/aufspaltung.pdf figures/beispiel.jpg figures/sagnac.pdf

figures/aufspaltung.pdf:
	wget 'https://github.com/KevSed/Praktikum/raw/master/V21%20Optisches%20Pumpen/figures/Aufspaltung.jpg'
	mv Aufspaltung.jpg figures/aufspaltung.jpg

figures/beispiel.jpg:
	wget 'https://raw.githubusercontent.com/KevSed/Praktikum/master/V21%20Optisches%20Pumpen/figures/Beispiel.jpg'
	mv Beispiel.jpg figures/beispiel.jpg

figures/sagnac.pdf:
	wget https://github.com/KevSed/Praktikum/raw/master/V64%20Moderne%20Interferometrie/figures/aufbau.pdf
	mv aufbau.pdf figures/sagnac.pdf


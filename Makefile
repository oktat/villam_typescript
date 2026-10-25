

CHAPTERS = 	00_Cimlap.md \
			01_Bevezetes.md \
			02_Alaptipusok.md \
			03_Specialis.md \
			04_Komplex.md \
			05_Halado.md

OUTPUT = villam_typescript.pdf

all: $(OUTPUT)

$(OUTPUT): $(CHAPTERS)
	pandoc $(CHAPTERS) -o $(OUTPUT) \
		--pdf-engine=xelatex \
		-H header.tex \
		--highlight-style=tango \
		-V geometry:margin=2.5cm \
		-V mainfont="Linux Libertine O" \
		-V lang=hu \
		-V documentclass=report \
		-V monofont="DejaVu Sans Mono" \
		-V papersize=a5 \
		--number-sections

clean:
	rm -f $(OUTPUT)

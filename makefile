# Autor: Liber Dovat
#
# Makefile para compilar un documento latex
#
# Para utilizar solo hay que llenar el campo NAME de la siguiente
# manera NAME=nombre_del_archivo sin agregar la extension
#

# El nombre del archivo sin la extension
NAME=onmyouza

# Compiladores y programas
PDFLATEX = pdflatex

ARCHIVOS = chimimouryou.tex \
           hyakki_ryouran.tex \
           kongo_kyubi.tex \
           mugen_houyou.tex \
           fuuin_kairan.tex \
           kikoku_tensho.tex \
           konpeki_no_soujin.tex \
           garyo_tensei.tex \
           kishibojin.tex \
           maou_taiten.tex \
           houyoku_rindou.tex \
           kojin_rasetsu.tex \
           mezame.tex \
           kokui_no_tennyou.tex

# Otras opciones
OPCIONESLATEX =

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex $(ARCHIVOS) makefile
	$(PDFLATEX) $(OPCIONESLATEX) $(NAME).tex
	$(PDFLATEX) $(OPCIONESLATEX) $(NAME).tex

view: all
	okular $(NAME).pdf &

clean:
	rm -f $(NAME).out *.aux $(NAME).toc $(NAME).log $(NAME).nav $(NAME).snm
	touch $(NAME).tex

again: clean all
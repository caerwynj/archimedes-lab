
%.tbl: %-out,ffd
	awk -f ../src/fmt.awk $< > $@

%.m4: %-yml,fff
	awk -f ../src/meta2m4.awk $< > $@

%.frag: %.m4
	m4 -D__POST_MACROS=$*.m4 ../templates/fragment.html.m4 > $@

%.html: %.tbl %.m4 %-yml,fff
	m4 -D__POST_TBL=$*.tbl -D__POST_MACROS=$*.m4 ../src/post.m4 > $@

POSTS=$(wildcard *yml,fff)

all: $(POSTS:-yml,fff=.html) $(POSTS:-yml,fff=.frag)
	cp *.html ~/caerwynj.github.io/archimedes-lab/7/2/1/1/
	cat *.frag > indexlist
	m4 -D__INDEX_LIST=indexlist ../src/index.m4 > index.html


clean:
	rm -f *.frag *.m4 *.tbl

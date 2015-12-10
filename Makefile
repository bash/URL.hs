#
# (c) 2015 Ruben Schmidmeister <ruby@fog.im>
#

.PHONY: all clean

all: bin/url

bin/url: src/*.hs
	mkdir -p $(dir $@)
	ghc --make -isrc -o bin/url src/Main.hs
	make clean

clean:
	rm -rf src/*.o src/*.hi
  

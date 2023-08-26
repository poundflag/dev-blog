FILES = index

.PHONY: all clean

all: $(FILES)

$(FILES): % : src/%.md
	pandoc --standalone --template template.html $< -o $@.html

clean:
	rm -f $(FILES:=.html)

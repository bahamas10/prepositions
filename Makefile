FILE = prepositions.json

all:
	./getprepositions.sh | ./stringify.js > $(FILE)
clean:
	rm -f $(FILE)

.PHONY: all clean

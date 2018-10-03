
all:
	make build
	make doc

build: main.o game.o othello.o
	g++ main.o game.o othello.o -o game

main.o: main.cc
	g++ -c main.cc

game.o: game.cc game.h
	g++ -c game.cc

othello.o: othello.cc othello.h
	g++ -c othello.cc

clean:
	rm *.o game
	rm -r html
	rm -r latex

archive:
	tar cvf archive.tar.gz *

doc:
	doxygen game.cc
	doxygen othello.cc
	doxygen main.cc


	

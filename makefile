README.md: guessinggame.sh
	echo "# The GNU/Linux Guessing Game" > README.md
	echo "This game let you guess how many files there are in the current \
		directory and keeps asking until you come up with the right answer." >> README.md

	echo "## Lines Of Code in the guessinggame.sh file" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

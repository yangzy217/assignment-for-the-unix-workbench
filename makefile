README.md: guessinggame.sh
	touch README.md
	echo "# Assignment for the course of Unix Workbench" >> README.md
	echo -n "The number of lines in guessinggame.sh is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
#insert a return
	echo >> README.md
	date >> README.md

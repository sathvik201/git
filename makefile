# Variables
README = README.md
SCRIPT = guessinggame.sh

# Default target
all: $(README)

$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "## Description" >> $(README)
	echo "This program asks the user to guess the number of files in the current directory until they guess correctly." >> $(README)
	echo "" >> $(README)
	echo "## Run Information" >> $(README)
	echo "Run the program by entering the command: \`bash guessinggame.sh\`" >> $(README)
	echo "" >> $(README)
	echo "## Build Information" >> $(README)
	echo "Date and time of build: $$(date)" >> $(README)
	echo "Number of lines in \`$(SCRIPT)\`: $$(wc -l < $(SCRIPT))" >> $(README)

clean:
	rm -f $(README)

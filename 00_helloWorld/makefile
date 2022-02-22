file=HelloWorld.love
path=../

all:
	rm -f $(path)$(file)
	# zip $(path)$(file) main.lua
	zip -r $(path)$(file) .
	termux-open --chooser $(path)$(file)
desktop:
	love .



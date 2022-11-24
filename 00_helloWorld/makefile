file=HelloWorld.love
# path=../
path= /data/data/com.termux/files/home/storage/shared/lovegame/


all:
	# rm -f $(path)$(file)
	# rm -r $(path)*
	rsync -a . $(path)
	termux-open main.lua
	# zip $(path)$(file) main.lua
	# zip -r $(path)$(file) .
	# termux-open --chooser $(path)$(file)
desktop:
	love .



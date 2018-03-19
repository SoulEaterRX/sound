OBJ =main.o sound.o
APPNAME = sound.a

#linj rule
$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)
#compiling rule
%.o : %.c
	gcc -c -o $@ $<

clean :
	rm $(OBJ) $(APPNAME)

tar :
	tar cf project.tar *

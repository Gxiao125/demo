src = $(wildcard ./*.c) #当前目录下所有的后缀.c文件赋值给src
obj = $(patsubst %.c, %.o, $(src)) #将src中所有的后缀为.c的文件改为.o赋值给obj

target = app
CC = gcc

$(target):$(obj) #将obj中的.o文件编译为（target）可执行文件
	$(CC) $(obj) -o $(target)  

%.o : %.c
	$(CC) -c $< -o $@

.PHONY : clean
clean:
	rm -rf $(obj) $(target)


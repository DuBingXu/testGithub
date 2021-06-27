#obj = main.o hello.o
src = $(wildcard ./*.cpp)#返回值 = $(函数名 参数) 获取指定目录下的.c文件
obj = $(patsubst ./%.cpp, ./%.o, $(src))#把.c替换成.o

test:$(obj)
	g++ $(obj) -o test

%.o:%.c
	g++ -c $< -o $@

#mian.o:hello.h
#
#hello.o:hello.h

#起到删除不同类型文件的作用
.PHONY:clean cleanobj cleantest

clean:
	-rm test *.o

cleanobj:
	-rm $(obj)

cleantest:
	-rm test


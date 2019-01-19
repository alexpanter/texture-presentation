CLANG=clang++-6.0
STD=-std=c++17
FLAGS=-Werror

LINK_OPENGL=-lGLEW -lGL -lGLU -lglfw3 -lX11 -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor

EX1=example1
EX2=example2

build1: ${EX1}.cpp
	$(CLANG) $(STD) $< -o ${EX1} $(LINK_OPENGL)

build2: ${EX2}.cpp
	$(CLANG) $(STD) $< -o ${EX2} $(LINK_OPENGL)

run1: ${EX1}
	./example1

run2: ${EX2}
	./example2

test1: build1 run1

test2: build2 run2

.PHONY: clean

clean:
	rm -rf *.o ${EX1} ${EX2}

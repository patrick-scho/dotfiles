function bmake
	if test -z (ls Makefile)
echo "all: main.cpp
g++ main.cpp -o main" > Makefile
end
bear make
end

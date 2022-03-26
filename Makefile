# build & test automation

APP_NAME=static-linking
LIB_NAME=strlib
EXE_NAME=main

build:
	gcc -c ${APP_NAME}.c -o ${APP_NAME}.o
	gcc -c ${LIB_NAME}.c -o ${LIB_NAME}.o
	gcc ${APP_NAME}.o ${LIB_NAME}.o -o ${EXE_NAME}

test: build
	@echo Test 1 - addition
	./${EXE_NAME} -add "Initial String " "This is the rest to be added" ; echo "status: $$?"
	@echo Test 2 - find
	./${EXE_NAME} -find "This is a super long string" "super long" ; echo "status: $$?"
	@echo Test 3 - failed addition
	./${EXE_NAME} -add "Initial String" ; echo "status: $$?"
	@echo Test 4 - failed find
	./${EXE_NAME} -find "This is my super long string" ; echo "status: $$?"

clean:
	rm -rf *.o

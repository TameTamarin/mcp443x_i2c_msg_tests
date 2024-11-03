
######################################
# target
######################################
mcp443x_tests : mcp443x_tests.o mcp443x.o
	cc -o mcp443x_tests mcp443x_tests.o mcp443x.o

mcp443x_tests.o : mcp443x_tests.c
	cc -c mcp443x_tests.c

mcp443x.o : Drivers/mcp443x_I2C_Msgs/Src/mcp443x.c \
	Drivers/mcp443x_I2C_Msgs/Inc/mcp443x.h
	cc -c Drivers/mcp443x_I2C_Msgs/Src/mcp443x.c

#BUILD_DIR := build


######################################
# create build directory
######################################
#$(BUILD_DIR):
#	mkdir $(BUILD_DIR)

#######################################
# clean up
#######################################
clean :
	rm mcp443x_tests.o mcp443x.o

######################################
# declare objects
######################################
BUILD_DIR := build
OBJS = $(addprefix $(BUILD_DIR)/,mcp443x_tests.o mcp443x.o)
C_SOURCE = Drivers/mcp443x_I2C_Msgs/Src/mcp443x.c

CC = gcc



######################################
# create build directory
######################################



######################################
# target
######################################
$(BUILD_DIR)/mcp443x_tests : $(OBJS)
	cc -o $(BUILD_DIR)/mcp443x_tests $(OBJS)


$(BUILD_DIR)/mcp443x_tests.o : mcp443x_tests.c
	$(CC) -c -o $(BUILD_DIR)/mcp443x_tests.o mcp443x_tests.c

$(BUILD_DIR)/mcp443x.o : $(C_SOURCE)
	$(CC) -c -o $(BUILD_DIR)/mcp443x.o $(C_SOURCE)


# $(BUILD_DIR)/%.o: %.c
# 	$(CC) -c -o $@ $^



# $(OBJS): | $(BUILD_DIR)

# $(BUILD_DIR):
# 	mkdir $(BUILD_DIR)

#######################################
# clean up
#######################################
clean :
	rm $(OBJS)
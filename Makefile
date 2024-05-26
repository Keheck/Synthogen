SRC_DIR := src
BUILD_DIR := build
INCLUDE := $(foreach path,include,-iquote $(path))

BUILD_TARGET := $(BUILD_DIR)/synthogen
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(SRC_FILES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)
DEP_FILES := $(OBJ_FILES:.o=.d)

CFLAGS := -Wall -Werror -MMD -MP
LDFLAGS :=

$(BUILD_TARGET): $(OBJ_FILES) | $(BUILD_DIR)
	gcc $(OBJ_FILES) $(LDFLAGS) -o $@

$(OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	gcc -c $(CFLAGS) $(INCLUDE) $< -o $@

$(BUILD_DIR):
	mkdir -p $@

-include $(DEP_FILES)

.PHONY: clean
clean:
	rm -rf build/
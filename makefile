# Define variables
GOAL_FILE = calc.goal
PY_FILE = calc.py

# Default rule to build the project
all: $(PY_FILE)

# Rule to build the Python file
$(PY_FILE): $(GOAL_FILE)
    python aicmd.py python $(GOAL_FILE) > $(PY_FILE)

# Clean rule to remove generated files
clean:
    rm -f $(PY_FILE)

.PHONY: all clean

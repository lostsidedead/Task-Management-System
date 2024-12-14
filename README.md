# Lua Task Management System

## Project Overview
It is a feature-rich and modular program designed to manage tasks efficiently. This project demonstrates key programming principles in Lua, such as object-oriented programming, modularity, and usability.

## Features
- **Task Creation**: Add tasks with a title, description, and priority.
- **Task Management**:
  - List all tasks with detailed information.
  - Mark tasks as completed.
  - Remove tasks by their index.
- **Modular Design**: The project is structured with independent `Task` and `TaskManager` modules, making it extensible and reusable.

## How It Works
The system revolves around two main components:
1. **Task Module**:
   - Represents individual tasks with attributes like `title`, `description`, `priority`, and `completed` status.
   - Provides methods for displaying and marking tasks as completed.
2. **TaskManager Module**:
   - Manages a collection of tasks.
   - Includes methods to add, remove, list, and update tasks.

## Example Usage
Below is a demonstration of how to use the Lua Task Management System:

```lua
local taskManager = TaskManager:new()

local task1 = Task:new("Write Code", "Write the Lua script for the project.", "High")
local task2 = Task:new("Test Code", "Run tests to ensure everything works as expected.", "Medium")
local task3 = Task:new("Submit Project", "Push the code to GitHub.", "High")

taskManager:addTask(task1)
taskManager:addTask(task2)
taskManager:addTask(task3)

print("--- Listing Tasks ---")
taskManager:listTasks()

print("\n--- Marking Task 2 as Completed ---")
taskManager:markTaskCompleted(2)

taskManager:listTasks()

print("\n--- Removing Task 1 ---")
taskManager:removeTask(1)

taskManager:listTasks()
```

**Enjoy and feel free to contribute and suggest improvements!**


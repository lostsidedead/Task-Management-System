-- Project: Task Management System
-- Author: Yassine Fejrit
-- Description: A feature-rich task management system written in Lua with an emphasis on modularity and functionality.

-- Module: Task (defines the structure and behavior of tasks)
Task = {}
Task.__index = Task

function Task:new(title, description, priority)
    local obj = {
        title = title or "Untitled Task",
        description = description or "No description provided",
        priority = priority or "Medium",
        completed = false
    }
    setmetatable(obj, Task)
    return obj
end

function Task:markCompleted()
    self.completed = true
end

function Task:display()
    print("Task: " .. self.title)
    print("Description: " .. self.description)
    print("Priority: " .. self.priority)
    print("Completed: " .. (self.completed and "Yes" or "No"))
end

-- Module: TaskManager (handles a collection of tasks)
TaskManager = {}
TaskManager.__index = TaskManager

function TaskManager:new()
    local obj = {
        tasks = {}
    }
    setmetatable(obj, TaskManager)
    return obj
end

function TaskManager:addTask(task)
    table.insert(self.tasks, task)
end

function TaskManager:removeTask(index)
    if index > 0 and index <= #self.tasks then
        table.remove(self.tasks, index)
    else
        print("Invalid task index")
    end
end

function TaskManager:listTasks()
    for i, task in ipairs(self.tasks) do
        print("\nTask #" .. i)
        task:display()
    end
end

function TaskManager:markTaskCompleted(index)
    if index > 0 and index <= #self.tasks then
        self.tasks[index]:markCompleted()
    else
        print("Invalid task index")
    end
end

-- Example Usage
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

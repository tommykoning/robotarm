require 'robot_arm'
robot_arm:load_level('exercise 2')

robot_arm:grab()
for _ = 2, 10 do 
robot_arm:move_right()
end 
robot_arm:drop()
for _ = 11, 12 do 
robot_arm:move_left()
end
robot_arm:grab()
for _ = 14, 15 do 
  robot_arm:move_right()
end
robot_arm:drop()
for _ = 17, 21 do 
  robot_arm:move_left()
end
robot_arm:grab()
for _ = 23, 27 do
  robot_arm:move_right()
end
robot_arm:drop()
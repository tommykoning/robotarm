require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.97
x = 9
i = 8
for _ = 1, 5 do 
  robot_arm:grab()
  for _ = 1,(x) do 
  robot_arm:move_right()
end 
x =  (x)-2
robot_arm:drop()
for _ = 1,(i) do 
  robot_arm:move_left()
end
i = (i)-2
end
require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.97
for _ = 1, 8 do 
  robot_arm:move_right()
end
for s = 1,8 do 
  robot_arm:grab()
  result = robot_arm:scan()
  if result == 'white' then 
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
  elseif result ~= 'white' then
    robot_arm:drop()
  end
  robot_arm:move_left()
  end
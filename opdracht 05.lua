require 'robot_arm'
robot_arm:load_level('exercise 6')

for _ = 1, 7 do 
  robot_arm:move_right()
end
robot_arm:grab()
robot_arm:move_right()
robot_arm:drop()
for _ =1, 7 do
  robot_arm:move_left()
  robot_arm:move_left()
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:drop()
  end
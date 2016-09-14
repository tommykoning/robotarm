require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed = 0.97
x = 1
scan = true
 while (scan) do
   robot_arm:grab()
   robot_arm:scan()
   result = robot_arm:scan()
    if result ~= nil then
      for _ = 1, (x) do
        robot_arm:move_right()
    end 
    robot_arm:drop()
    for _ = 1, (x) do 
      robot_arm:move_left()
    end
    x=(x)+1 
    else 
        robot_arm:move_left()
        scan = false
    end
  end

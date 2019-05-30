function Pos = wheelRobot(input, lastPos) % input = [drive; turn; strafe]    Pos = [xPos; yPos; theta]

  theta = lastPos(3, 1) + (pi/269) * input(2,1);
  %input(2, 1)/200); % theta는, 얼마나 0, 200 값을 유지할 것이냐.
  xPos = lastPos(1,1) + (input(1, 1)/200)*cos(theta);   % 이것들은, 인풋값을 상시 변경
  yPos = lastPos(2,1) + (input(1, 1)/200)*sin(theta);

  Pos = [xPos; yPos; theta];
  
  scatter(Pos(1,1), Pos(2,1), 50, 'o', 'b', 'filled');
  hold on
  
  S = ['(' num2str(Pos(1,1)) ', ' num2str(Pos(2,1)) ', ' num2str(radtodeg(Pos(3,1))) ')'];
  text(Pos(1,1)+12, Pos(2,1)-12, S, 'FontSize', 9);
  hold on
  plot([xPos xPos + 30*cos(theta)]', [yPos yPos + 30*sin(theta)]', 'b');

end


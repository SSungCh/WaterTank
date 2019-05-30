function markDest(xDest, yDest)

  scatter(xDest, yDest, 100, 'x', 'r');
  hold on
  
  S = ['(' num2str(xDest) ', ' num2str(yDest) ')' '  ' '(' num2str(sqrt(xDest^2 + yDest^2)) ', ' num2str(radtodeg(atan(yDest/xDest))) ')'];
  text(xDest+12, yDest, S, 'FontSize', 9);
  hold on
  plot([0 xDest]',[0 yDest]', 'r');
  hold on
  
end


function mecanumSimulation(xDest, yDest)

  i = 0;
  k = 0;
  t = 0;
  nextPos = [0;0;0];
  currPos = [0;0;0];
  currPolar = [0;0];
  driveVal = 0;
  turnTime = 0;
  errDist = 0;
  errAngle = 0;
  
  while((5 < abs(xDest-currPos(1,1))) || (5 < abs(yDest-currPos(2,1))))
     5 < abs(yDest-currPos(2,1))
  factory();
  markDest(xDest, yDest);
  
  currPolar = [sqrt( ((xDest-currPos(1,1))^2) + ((yDest-currPos(2,1))^2)); atan((yDest-currPos(2,1))/(xDest-currPos(1,1)))];
  [driveVal, errDist] = corrDist(currPolar(1,1), errDist);
  if driveVal > 200
      driveVal = 200;
  end
  [turnTime, dir, errAngle] = corrAngle(currPolar(2,1) - currPos(3,1), errAngle);  
  testTime = turnTime;
  if testTime > 0.1
      testTime = 0.1;
      
   while(testTime > 0)
       k = k + 1;
      if(mod(k,10) == 0)
          localRenew();
      else
      factory();
      end
     markDest(xDest, yDest);
      if dir == 1 
          turnDir = 1;
      else 
          turnDir = -1;
      end
      nextPos = wheelRobot([0; turnDir],currPos);
  
      currPos = nextPos;
 
      testTime = testTime - 0.01;
      pause(0.01)
      hold off
   end
  else
   while(testTime > 0)
       k = k + 1;
      if(mod(k,10) == 0)
          localRenew();
      else
      factory();
      end
     markDest(xDest, yDest);
      if dir == 1 
          turnDir = 1;
      else 
          turnDir = -1;
      end
      nextPos = wheelRobot([0; turnDir],currPos);
  
      currPos = nextPos;
 
      testTime = testTime - 0.01;
      pause(0.01)
      hold off
   end
  for i = 1 : 10-floor(turnTime)
      if i == 10-floor(turnTime)
          localRenew();
      else
  factory();
      end
  markDest(xDest, yDest);
  nextPos = wheelRobot([driveVal; 0],currPos);
  
  currPos = nextPos;
  
  pause(0.01);
  hold off
  end
  end

  
  end

end
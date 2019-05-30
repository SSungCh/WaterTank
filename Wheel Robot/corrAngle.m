function [turnTime, dir, totalErr] = corrAngle(errAngle,lastErr)

  Kp = 1.2;
  Ki = 0.00005;
  timeVal = 1.17;
  
  
  totalErr = errAngle + lastErr;
  
  if(errAngle < 0)
      dir = 0;
      errAngle = abs(errAngle);
  else
      dir = 1;
  end

  turnTime = (Kp * errAngle + Ki * totalErr) * timeVal;
  
  
end


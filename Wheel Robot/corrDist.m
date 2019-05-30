function [driveVal, totalErr] = corrDist(errDist,lastErr) % theta는, 얼마나 0, 200 값을 유지할 것이냐. 

  Kp = 1;
  Ki = 0.01;

  totalErr = errDist + lastErr;
  
  driveVal = Kp * errDist + Ki*totalErr;


end


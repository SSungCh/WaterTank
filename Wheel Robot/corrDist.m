function [driveVal, totalErr] = corrDist(errDist,lastErr) % theta��, �󸶳� 0, 200 ���� ������ ���̳�. 

  Kp = 1;
  Ki = 0.01;

  totalErr = errDist + lastErr;
  
  driveVal = Kp * errDist + Ki*totalErr;


end


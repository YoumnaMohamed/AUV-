m=32.5; 
g=9.81;
V=0.03255; 
p=1000;
Zww=260;

sampelTime = 10^-2;
simTime = 50;

time = linspace(0,simTime,(simTime/sampelTime)+1);
pos  = zeros(1,(simTime/sampelTime)+1);
vel  = zeros(1,(simTime/sampelTime)+1); 
Fth  = zeros(1,(simTime/sampelTime));

for i = 1:sim_time/samp_time
    acceleration = (m*g - p*V*g - Zww*vel(i)*abs(vel(i)) - Fth(i))/m;
    vel(i+1) = vel(i) + samp_time*acceleration;
    pos(i+1) = pos(i) + samp_time*vel(i);
end

plot(time,pos);

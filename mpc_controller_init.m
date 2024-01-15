[A,B,C,D] = ibvs_cstate();
plant = ss(A,B,C,D);
Ts = 0.04;
PredictionHorizon = 3;
ControlHorizon = 1;
mpc_plant=c2d(plant,Ts);
mpc_plant.InputGroup.ManipulatedVariables = [1 2 3 4 5 6];
mpc_plant.InputGroup.MeasuredDisturbances = [7 8 9 10 11 12 13 14 15 16 17];
mpcobj = mpc(mpc_plant,Ts,PredictionHorizon,ControlHorizon);
%the limit of joints velocity
mpcobj.ManipulatedVariables(1).Min = -0.5;
mpcobj.ManipulatedVariables(2).Min = -0.5;
mpcobj.ManipulatedVariables(3).Min = -0.5;
mpcobj.ManipulatedVariables(4).Min = -0.5;
mpcobj.ManipulatedVariables(5).Min = -0.5;
mpcobj.ManipulatedVariables(6).Min = -0.5;
mpcobj.ManipulatedVariables(1).Max = 0.5;
mpcobj.ManipulatedVariables(2).Max = 0.5;
mpcobj.ManipulatedVariables(3).Max = 0.5;
mpcobj.ManipulatedVariables(4).Max = 0.5;
mpcobj.ManipulatedVariables(5).Max = 0.5;
mpcobj.ManipulatedVariables(6).Max = 0.5;
%the limit of joints velocity aceerlation
mpcobj.ManipulatedVariables(1).RateMin = -0.8;
mpcobj.ManipulatedVariables(2).RateMin = -0.8;
mpcobj.ManipulatedVariables(3).RateMin = -0.8;
mpcobj.ManipulatedVariables(4).RateMin = -0.8;
mpcobj.ManipulatedVariables(5).RateMin = -0.8;
mpcobj.ManipulatedVariables(6).RateMin = -0.8;
mpcobj.ManipulatedVariables(1).RateMax = 0.8;
mpcobj.ManipulatedVariables(2).RateMax = 0.8;
mpcobj.ManipulatedVariables(3).RateMax = 0.8;
mpcobj.ManipulatedVariables(4).RateMax = 0.8;
mpcobj.ManipulatedVariables(5).RateMax = 0.8;
mpcobj.ManipulatedVariables(6).RateMax = 0.8;
%the limit of output
mpcobj.OutputVariables(1).Min = -280;
mpcobj.OutputVariables(2).Min = -210;
mpcobj.OutputVariables(3).Min = -280;
mpcobj.OutputVariables(4).Min = -210;
mpcobj.OutputVariables(5).Min = -280;
mpcobj.OutputVariables(6).Min = -210;
mpcobj.OutputVariables(7).Min = -280;
mpcobj.OutputVariables(8).Min = -210;
mpcobj.OutputVariables(9).Min = -0.5;
mpcobj.OutputVariables(10).Min = -0.05;
mpcobj.OutputVariables(11).Min = 0.25;
mpcobj.OutputVariables(9).MinECR =0.01;
mpcobj.OutputVariables(10).MinECR =0.01;
mpcobj.OutputVariables(11).MinECR =0.01;
mpcobj.OutputVariables(1).Max = 280;
mpcobj.OutputVariables(2).Max = 210;
mpcobj.OutputVariables(3).Max = 280;
mpcobj.OutputVariables(4).Max = 210;
mpcobj.OutputVariables(5).Max = 280;
mpcobj.OutputVariables(6).Max = 210;
mpcobj.OutputVariables(7).Max = 280;
mpcobj.OutputVariables(8).Max = 210;
mpcobj.OutputVariables(9).Max = 0.5;
mpcobj.OutputVariables(10).Max = 0.4;
mpcobj.OutputVariables(11).Max = 0.5;
mpcobj.OutputVariables(9).MaxECR =0.01;
mpcobj.OutputVariables(10).MaxECR =0.01;
mpcobj.OutputVariables(11).MaxECR =0.01;
%the weights of output
mpcobj.Weights.ManipulatedVariables = [0,0,0,0,0,0];
mpcobj.Weights.ManipulatedVariablesRate = [8,8,8,8,8,8];
mpcobj.Weights.OutputVariables =[1,1,1,1,1,1,1,1,0,0,0];
setEstimator(mpcobj,'custom');
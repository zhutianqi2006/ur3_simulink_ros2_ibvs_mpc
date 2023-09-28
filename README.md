<h1 align="center">
  UR3 Unity ROS2 IBVS
</h1>
<p align="center">
<p align="center">
  UR3 Image-Based Visual Servoing Simulation Experiment - Simulink MPC Controller
</p>
<p align="center">
English | <a href="README_zh_CN.md">简体中文</a> 
</p>

## Simulation Environment Requirements
To run the simulation, ensure that MATLAB version is greater than 2023a.
In addition to basic Simulink components, make sure to install MATLAB's official ROS Toolbox and Model Predictive Control Toolbox.
| MATLAB Toolbox | Link|
| --------------------------| ------------------------------------------------------------------------------------- |
| ROS Toolbox| https://www.mathworks.com/products/ros.html  |
| Model Predictive Control Toolbox | https://www.mathworks.com/products/model-predictive-control.html|

Clone the code to your local machine:
```sh
git clone https://github.com/zhutianqi2006/ur3_unity_ros2_ibvs.git
```
## Controller Usage Description

<p align="center">
<img src="doc/image/1.jpg" width="900" height="280">
</p>

### Running the Controller:

⭐1: Before running Simulink, execute all_init.m to initialize the MPC controller and UR3 model, and keep them in the workspace.

⭐2: Ensure that the robot arm and vision are communicative, then run ur3_simulink_ros2_ibvs_mpc.slx to execute the MPC controller and publish desired joint velocities.

⭐3: Stop the Simulink file. Data generated during the process will be saved in the workspace. Open the plot folder and select the corresponding .m file to plot the data.

### MPC Controller:
This controller does not involve the robot arm simulation part. Robot arm simulation can be found in the project:

| Project | Link|
| --------------------------| ------------------------------------------------------------------------------------- |
| UR3 Unity ROS2 IBVS | https://github.com/zhutianqi2006/ur3_unity_ros2_ibvs  |

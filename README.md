# OpenPlanner 2.5
The workspace for directly downloading and installing Autoware.AI versions with the latest OpenPlanner 2.5 updates

## Videos and Tutorials for OpenPlanner. [YouTube](https://youtu.be/86K95RY0Iqk)

## Installation and build with specific Autoware relase and OpenPlanner updates. 

Autoware.AI help and Installation Guide, [Autoware.AI](https://github.com/Autoware-AI/autoware.ai/wiki/Source-Build)
 - Follow the main dependecies installation 
 - For How to build, follow the following instructions below

System dependencies for Ubuntu 18.04 / Melodic
```
$ sudo apt update
$ sudo apt install -y python-catkin-pkg python-rosdep ros-$ROS_DISTRO-catkin
$ sudo apt install -y python3-pip python3-colcon-common-extensions python3-setuptools python3-vcstool
$ pip3 install -U setuptools
```

```
$ git clone https://github.com/hatem-darweesh/autoware.ai.openplanner.git
$ cd autoware.ai.openplanner
$ mkdir -p src
```

For Autoware.AI 1.13.0 Release + the latest OpenPlanner development:

```
$ vcs import src < openplanner.1.13.repos
```

For Autoware.AI (latest-master) 1.15.0 Release + the latest OpenPlanner development:

```
$ vcs import src < openplanner.1.15.repos
```

Install dependecies using rosdep: 
```
$ rosdep update
$ rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
```

Build using colcon or catkin: 
```
$ catkin_make -DCMAKE_BUILD_TYPE=Release
```
or
```
$ colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
```

## Utilities files: 
- op.rviz config file for visualizing OpenPlanner topics
- setup_op_repo_branch.sh file to automatically switch to OpenPlanner.1.13 or OpenPlanner.1.15 from original Autoware.AI
- pull_from_branch.sh pulls all repo updates from certain branch for (common, core_planning, core_perception, utilities)

## Research Papers
- Darweesh, Hatem, Eijiro Takeuchi, and Kazuya Takeda."OpenPlanner 2.0: The Portable Open Source Planner for Autonomous Driving Applications." 2021 IEEE Intelligent Vehicles Symposium Workshops (IV Workshop). July 11-17, 2021. Nagoya, Japan.

- Darweesh, Hatem, Eijiro Takeuchi, Kazuya Takeda, Yoshiki Ninomiya, Adi Sujiwo, Luis Yoichi Morales, Naoki Akai, Tetsuo Tomizawa, and Shinpei Kato. "Open source integrated planner for autonomous navigation in highly dynamic environments." [Journal of Robotics and Mechatronics 29, no. 4](https://www.fujipress.jp/jrm/rb/robot002900040668/) (2017): 668-684.

- Darweesh, Hatem, Eijiro Takeuchi, and Kazuya Takeda. "Estimating the Probabilities of Surrounding Vehicles’ Intentions and Trajectories using a Behavior Planner." [International journal of automotive engineering 10.4](https://www.jstage.jst.go.jp/article/jsaeijae/10/4/10_20194117/_article/-char/ja/) (2019): 299-308.

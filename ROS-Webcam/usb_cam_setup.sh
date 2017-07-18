#Creating catkin ws and making usb_cam

#creating catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

#installing usb_cam
cd ~/catkin_ws/src
git clone https://github.com/bosch-ros-pkg/usb_cam.git
cd ~/catkin_ws
catkin_make
rospack profile

#setting source
cd ~/catkin_ws
source devel/setup.bash

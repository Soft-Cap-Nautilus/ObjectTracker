# RoboVision
RoboVision is a student project that aims to implement a variety of image processing functions in a ROS environment.

# ObjectTracker
The ObjectTracker is used to outline objects, return their color and centroid position.
This project requires OpenCV.
To run it, first you have to set calibrationMode to true, in multipleObjectTracking.cpp. Then run it and adjust the HSV sliders until you can recognize objects in the filtered image view. Adjust the values obtained in the sliders in the code and rebuild it.

This project was based on:
https://github.com/akaifi/MultiObjectTrackingBasedOnColor

# ROS-Webcam
The ROS-Webcam is a catkin workspace with the usb_cam package installed. It requires Indigo ROS, on Ubuntu 14.04. 
To use it put the catkin_ws directory in your home, setup source catkin_ws/devel/setup.bash, and run
$ roslaunch usb_cam usb_cam-test.launch video_device:=dev/video0
Change your camera device accordingly.

Equivalently, if You wish, You can setup everything through the usb_cam_setup.sh script included. Just adjust its permissions and run it, and everything should be installed.

The used usb_cam package is from:
https://github.com/ros-drivers/usb_cam

# ObjectMeasurer

These codes were written and tested in Python2.7 using OpenCV3.2.0 running on Ubuntu14.04
Necessary packages: Scipy and Imutils.



You can get them through:
$ pip install scipy
$ pip install imutils


Object_size.py

The program will use your webcam to scan objects and measure its width. To do that you have to have a reference object with known width being the first object show, from left to right. Then it will measure other objects.


To run this program:
$ python object_size.py --camera INDEX_OF_YOUR_WEBCAM --width KNOWN_WIDTH


Example:
$ python object_size.py --camera 0 --width 2.5


distance_to_camera.py

This program uses Your webcam to scan an object and measure its distance to the camera. To do that You'll have to take a shot of the object pressing ESC in a known distance and have its width known. Then input the values in the command line to see the camera scanning the object and measuring its distance to the camera.

To run this program:
$ python distance_to_camera.py


detect_shapes.py

This code uses your webcam to scan objects and classsifie its shapes (circle, square, rectangle, triangle, pentagunum, etc.)

To run this program:
$ python detect_shapes.py --camera INDEX_OF_YOUR_WEBCAM

Example:
$ python detect_shapes.py --camera 0

This project was based on:
http://www.pyimagesearch.com/2016/02/08/opencv-shape-detection/
http://www.pyimagesearch.com/2016/03/28/measuring-size-of-objects-in-an-image-with-opencv/ 
http://www.pyimagesearch.com/2015/01/19/find-distance-camera-objectmarker-using-python-opencv/



Have fun!

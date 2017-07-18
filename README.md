# RoboVision
RoboVision is a student project that aims to implement a variety of image processing functions in a ROS environment.

# ObjectTracker
The ObjectTracker is used to outline objects, return their color and centroid position.
This project requires OpenCV.
To run it, first you have to set calibrationMode to true, in multipleObjectTracking.cpp. Then run it and adjust the HSV sliders until you can recognize objects in the filtered image view. Adjust the values obtained in the sliders in the code and rebuild it.

# ROS-Webcam
The ROS-Webcam is a catkin workspace with the usb_cam package installed. It requires Indigo ROS

# ObjectMeasurer
The program will use your webcam to scan objects and measure its width. To do that you have to have a reference object with known width being the first object show, from left to right. Then it will measure other objects.

This code was written and tested in Python2.7 using OpenCV3.2.0 running on Ubuntu14.04
Necessary packages: Scipy and Imutils.
You can get them through:
$ pip install scipy
$ pip install imutils

To run your program:
python object_size.py --camera INDEX_OF_YOUR_WEBCAM --width KNOWN_WIDTH

Example:
python object_size.py --camera 0 --width 2.5

This project was based on:
http://www.pyimagesearch.com/2016/03/28/measuring-size-of-objects-in-an-image-with-opencv/






Have fun!

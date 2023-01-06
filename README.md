This project is base on MATLAB - Robotics Toolbox. Firstly, building up a 3-DOF waterjet with Puma560 arm base on MATLAB robotics toolbox. Based on image recognition to obtain the required cutting figure contour, perform path planning to determine the pose of the end joint point. Then can carry out a compensation algorithm, considering the actual shifting cutting angle of the waterjet instead of the end effector of Puma 560.

![Waterjet](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/waterjet.jpg)

The parameter of the waterjet.

![planning](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/planning.jpg)

The planning function of robotics toolbox.

The target is to complete trajectory planning according to the contour lines of the given picture. For different given pictures, the different results and their corresponding images are below:


![car](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/car.jpg)
![car](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/r_car.gif)

01 Car shape

![cross](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/cross.jpg)
![cross](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/r_cross.gif)

02 Cross shape

![star](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/star.jpg)
![star](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/r_star.gif)

03 Star shape

![heart](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/heart.jpg)
![heart](https://github.com/XiaoxuanShao/-Waterjet_with_Puma560/blob/main/Picture/r_heart.gif)

04 Heart shape

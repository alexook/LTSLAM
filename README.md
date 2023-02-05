# X-SLAM
# 1 Introduction

I hope you can learn slam step by step, you will can learn online  [X-SLAM documents tutorial](https://ltslam-doc.readthedocs.io/en/latest/index.html). What you choose today determines your tomorrow's life path. Diligence will not make up for your indecision.

You can learn slam knowledge by [哔哩哔哩 bilibili ](https://space.bilibili.com/478832908). This video website has a detailed explanation of the code and the corresponding SLAM technology principle. Let's start a happy journey. enjoy....

X-SLAM is an open source C++ demo for learn vision slam and lidar slam. Through open source engineering, we can learn the following knowledge content:

* <font color='red'> **C++**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/c%2B%2B/c%2B%2B.html)

* <font color='red'> **CMake** </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/cmake/cmake.html)

* <font color='red'> **Eigen**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/eigen/eigen.html)

* <font color='red'> **Math**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/math/math.html)

* <font color='red'> **OpenCV**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/opencv/opencv_tutorial.html)

* <font color='red'> **Quaternions**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/math/math.html)

* <font color='red'> **G2O**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/g2o/g2o_tutorial.html)

* <font color='red'> **Pangolin**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/pangolin/pangolin.html)

* <font color='red'> **libQGLViewer**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/libQGLViewer/libQGLViewer.html)

* <font color='red'> **Ceres Solver**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/tutorial/ceres/ceres_solver_tutorial.html)

* <font color='red'> **Kalman Filter**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/kalman_filter/kalman_filter.html)

* <font color='red'> **VSLAM**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/vslam/vision_slam.html)

* <font color='red'> **VINS Mono( VINS Project)**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/vins/vins.html)

* <font color='red'> **MSCKF-VIO( MSCKF Project)**  </font> [tutorial](https://ltslam-doc.readthedocs.io/en/latest/msckf/msckf.html)

  

**开源社区文档**

* <font color='red'> **X-SLAM Tutorial Documents**  </font> [网站链接](https://ltslam-doc.readthedocs.io/en/latest/index.html)

![](./image/x-slam-docs.png)



**哔哩哔哩 bilibili 视频教程**

* <font color='red'> **B站视频教程**  </font> [网站链接](https://space.bilibili.com/478832908)

![](./image/bilibili.png)

## 1.1 <font color='green'>Download LTSLAM source:</font>

```bash
git clone https://github.com/quanduyong/LTSLAM.git
```

## 1.2 <font color='green'>Project directory:</font>

### xlsam_ros  (2D lidar SLAM)

```bash
# step 1 下载 rosbag 数据集
# https://github.com/cartographer-project/cartographer_ros/blob/master/docs/source/data.rst

wget https://storage.googleapis.com/cartographer-public-data/bags/backpack_2d/b2-2015-05-26-13-15-25.bag

# step 2 run
roslaunch xslam_ros demo_slam2d.launch
# step 3 rosbag play

rosbag play b2-2015-05-26-13-15-25.bag
```

![xslam_ros_2d](./image/xslam_ros_2d.png) 



# 2 安装x-slam

## 2.1 推荐：docker方式安装

### 2.1.1  docker安装

```bash
cd docker
./scripts/install_docker.sh
```

### 2.1.2 X-SLAM环境部署和安装

```bash
cd docker
./build_dev.sh standalone.x86_64.dockerfile
```

### 2.1.3 运行X-SLAM的demos案例

X-SLAM的demo有很多，一下简单运行几个demo

```bash
docker run -it xslam/ltslam
```

运行每个模块的demo

* run ceres 

  ```
  ./xslam.ceres.helloworld_numeric_diff_test
  ```

* run g2o 

  ```bash
  ./xslam.g2o.curve_fitting_test
  ```

* run dbow3 

  ```
   ./xslam.dbow3.loop_closure_detect_test
  ```

* run opencv

  ```
  ./xslam.opencv.feature_detection.orb_feature_detector_test
  ```

* run Sophus

  ```
  ./xslam.sophus.basic_test
  ```

## 2.2 源码安装（不推荐）

### 2.2.1 Generate study documents
主要目的实现本地帮助文档doc下，以html网页的格式方便查看

* 安装Sphinx

  ```shell
  pip install -U sphinx
  ```

* 安装主题

  ```shell
  pip install sphinx_rtd_theme
  ```

* 安装markdown插件

  ```shell
  pip install recommonmark
  pip install myst-parser
  pip install sphinx_markdown_tables
  ```

### 2.2.2 Third party library

<font  color='green'>(推荐)</font>我已经提供了第三方库源码文件3rdparty目录下，执行以下命令安装，<font  color='red'>不然会出现版本不匹配问题</font>：

  ```shell
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install
  ```

​     <font  color='red'>(不推荐)</font>如果你想自己源码安装第三方库请使用以下步骤：

* 安装Eigen

  ```
  git clone https://gitlab.com/libeigen/eigen.git
  cd eigen
  git checkout 3.3.8
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install
  ```

* 安装Sophus

  ```shell
  git clone https://github.com/strasdat/Sophus.git
  cd Sophus
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install
  ```

* 安装abseil 

  在abseil项目的CMakeLists.txt的project(absl LANGUAGES CXX) 下添加以下命令：

  `add_compile_options(-fPIC)`

  ```shell
  git clone https://github.com/abseil/abseil-cpp.git
  cd abseil-cpp
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install
  ```

* 安装 DBow3

  ```
  git clone https://github.com/rmsalinas/DBow3.git
  cd abseil-cpp
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install  
  ```

* 安装googletest

  ```
  git clone https://github.com/google/googletest.git
  cd googletest
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install  
  ```

* 安装g2o

  ```
  git clone https://github.com/rmsalinas/DBow3.git
  cd abseil-cpp
  git checkout 9b41a4ea
  mkdir build && cd build
  cmake ..
  make -j6 
  sudo make install  
  ```

* 安装opencv & opencv_contrib (4.5-x)

  ```
  git clone https://github.com/opencv/opencv.git
  git clone https://github.com/opencv/opencv_contrib.git
  
  cd opencv
  mkdir build && cd build
  cmake-gui .. # 选择extra module opencv_contrib
  make -j6 
  sudo make install
  ```

# 3  工程编译

```shell
cd LTSLAM
mkdir build
cd build 
cmake ..
make -j6
```

# 4 如何运行工程demo

在工程的build/bin目录中，你可以看到对应的每个可执行二进制文件

![](./image/xslam_readme_run.png)

如何运行参考如下：

```bash
[bin] ./xslam.opencv.camera_calibration.perspective_correction_test
```

运行结果如下：

![](./image/demos_pose.gif)

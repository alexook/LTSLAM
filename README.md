# X-SLAM



# 1 Introduction




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

## 2.2 安装

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



# 3  工程编译

```shell
cd LTSLAM
mkdir build
cd build 
cmake ..
make -j6
```



运行结果如下：

![](./image/demos_pose.gif)

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Custom functions
if [ -f ~/.bashfunctions.sh ]; then
    . ~/.bashfunctions.sh
fi
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

#ROS / gazebo stuff
source /opt/ros/indigo/setup.bash
source /usr/local/share/gazebo/setup.sh
source /Users/ewilthil/Documents/repo/catkin-external/devel/setup.sh
source /Users/ewilthil/Documents/repo/autosea/ros/devel/setup.sh
# source catkin and stuff
export GAZEBO_RESOURCE_PATH=$GAZEBO_RESOURCE_PATH:/Users/ewilthil/Documents/repo/autosea/gazebo/
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/Users/ewilthil/Documents/repo/autosea/gazebo/models/
# source autosea python code and log data
export AUTOSEA_DATA_DIR=/Users/ewilthil/Documents/autosea_testdata
export PYTHONPATH=$PYTHONPATH:/Users/ewilthil/Documents/repo/autosea/
export PYTHONPATH=$PYTHONPATH:/Users/ewilthil/Documents/repo/

export PATH=$PATH:/Library/Frameworks/GDAL.framework/Programs

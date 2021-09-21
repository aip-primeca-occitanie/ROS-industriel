#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aip/ros_robot_arm/src/modbus/modbus_cognex_insight"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aip/ros_robot_arm/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aip/ros_robot_arm/install/lib/python2.7/dist-packages:/home/aip/ros_robot_arm/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aip/ros_robot_arm/build" \
    "/usr/bin/python2" \
    "/home/aip/ros_robot_arm/src/modbus/modbus_cognex_insight/setup.py" \
     \
    build --build-base "/home/aip/ros_robot_arm/build/modbus/modbus_cognex_insight" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/aip/ros_robot_arm/install" --install-scripts="/home/aip/ros_robot_arm/install/bin"

#!/bin/bash

#Run unit test in Windows, Linux and macOS


#----------- check for Windows, Linux and macOS build
if [ "$TRAVIS_OS_NAME" = "linux" ]
then

  #wine = windows
  if [ "$LAZ_ENV" = "wine" ]
  then

  #windows via 'Wine' does not work.
  #wine enduser/test_trackereditor.exe -a --format=plain
  echo There is no unit test for wine windows.
  echo unit test is run via AppVeyor

  else

  #linux
  enduser/test_trackereditor -a --format=plain

  fi

elif [ "$TRAVIS_OS_NAME" = "osx" ]
then
  #macOS
  # does not work.
  #enduser/test_trackereditor -a --format=plain
  echo There is no unit test for macOS.

fi

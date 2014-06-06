#-------------------------------------------------
#
# Project created by QtCreator 2014-06-05T20:41:18
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = StereoVision
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

INCLUDEPATH += D:\OpenCV\4VC10X86\include\
INCLUDEPATH += D:\OpenCV\4VC10X86\include\opencv\
INCLUDEPATH += D:\OpenCV\4VC10X86\include\opencv2\

CONFIG(debug,debug|release) {
LIBS += -LD:\OpenCV\4VC10X86\lib \
    -lopencv_core242d \
    -lopencv_highgui242d \
    -lopencv_imgproc242d \
    -lopencv_features2d242d \
    -lopencv_calib3d242d
} else {
LIBS += -LD:\OpenCV\4VC10X86\lib \
    -lopencv_core242 \
    -lopencv_highgui242 \
    -lopencv_imgproc242 \
    -lopencv_features2d242 \
    -lopencv_calib3d242
}

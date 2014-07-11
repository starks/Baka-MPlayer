#-------------------------------------------------
#
# Project created by QtCreator 2014-07-06T12:08:44
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Baka-MPlayer
TEMPLATE = app


SOURCES += main.cpp\
    mpvhandler.cpp \
    settingsmanager.cpp \
    windows/mainwindow.cpp \
    playlistmanager.cpp

HEADERS  += \
    mpvhandler.h \
    settingsmanager.h \
    windows/mainwindow.h \
    widgets/customslider.h \
    playlistmanager.h \
    widgets/playpausebutton.h

FORMS    += \
    windows/mainwindow.ui

CONFIG += c++11

unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += mpv
#unix: INCLUDEPATH += "/usr/include"
#unix: LIBS += "/usr/lib"
win32: INCLUDEPATH += "../res/include"
win32: LIBS += -L"../res/lib" -lmpv

RESOURCES += \
    rsclist.qrc

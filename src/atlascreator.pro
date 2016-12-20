#-------------------------------------------------
#
#       Atlas Creator
#
#-------------------------------------------------

QT      +=  core gui opengl

TARGET   =  atlascreator
TEMPLATE =  app

SOURCES +=  main.cpp \
            mainwindow.cpp \
            glwidget.cpp \
            objectcreator.cpp

HEADERS +=  mainwindow.h \
            atlas.h \
            glwidget.h \
            stable.h \
            objectcreator.h

PRECOMPILED_HEADER = stable.h

FORMS   +=  mainwindow.ui \
            objectcreator.ui

INCLUDEPATH += .

DEFINES += NOMINMAX

RESOURCES += resources.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/freeglut/lib/ -lfreeglut
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/freeglut/lib/ -lfreeglutd
else:unix:!macx: LIBS += -L$$PWD/freeglut/lib/ -lfreeglut

INCLUDEPATH += $$PWD/freeglut/include
DEPENDPATH += $$PWD/freeglut/include

TEMPLATE = lib
CONFIG += qt plugin
QT += qml quick
TARGET=nemocontrolsplugin
PLUGIN_IMPORT_PATH = QtQuick/Controls/Nemo
THEME_IMPORT_PATH = QtQuick/Controls/Styles/Nemo/themes

# Added/Reimplemented Controls
QML_FILES += \
    Button.qml \
    ApplicationWindow.qml \
    Page.qml \
    Spinner.qml \
    Label.qml \
    Checkbox.qml\
    images/disabled-overlay.png
    images/disabled-overlay-inverse.png

OTHER_FILES += qmldir \
    $$QML_FILES \
    ButtonRow.qml \
    QueryDialog.qml

HEADERS += \
    qquicknemocontrolsextensionplugin.h \
    hacks.h \
    nemowindow.h \
    nemopage.h

SOURCES += \
    qquicknemocontrolsextensionplugin.cpp \
    hacks.cpp \
    nemowindow.cpp \
    nemopage.cpp

target.path = $$[QT_INSTALL_QML]/$$PLUGIN_IMPORT_PATH

qmlfiles.files = $$_PRO_FILE_PWD_/*.qml
qmlfiles.files += $$_PRO_FILE_PWD_/qmldir
qmlfiles.path = $$[QT_INSTALL_QML]/$$PLUGIN_IMPORT_PATH
images.files = $$_PRO_FILE_PWD_/images
images.path = $$[QT_INSTALL_QML]/$$PLUGIN_IMPORT_PATH
INSTALLS += target qmlfiles images

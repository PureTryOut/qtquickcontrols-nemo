TEMPLATE = app
QT += qml quick
TARGET = touch_nemo
target.path = /usr/lib/qt5/examples

qtHaveModule(widgets) {
    QT += widgets
}

include(src/src.pri)

OTHER_FILES += \
    main.qml \
    content/AndroidDelegate.qml \
    content/ButtonPage.qml \
    content/ProgressBarPage.qml \
    content/SliderPage.qml \
    content/TabBarPage.qml \
    content/TextInputPage.qml \
    content/LiveCoding.qml \
    content/SpinnerPage.qml \
    content/LabelPage.qml \
    content/CheckboxPage.qml \
    content/ButtonRowPage.qml \
    content/QueryDialogPage.qml

RESOURCES += \
    resources.qrc

INSTALLS += target

desktop.path = /usr/share/applications
desktop.files = glacier-gallery.desktop
INSTALLS += desktop

DISTFILES += \
    content/ListViewPage.qml


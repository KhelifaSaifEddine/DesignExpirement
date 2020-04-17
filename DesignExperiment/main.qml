import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: qsTr("Experiment")
    StackView{
        anchors.fill: parent
        Home{
            anchors.fill: parent
        }
    }
    Component.onCompleted: {
        showMaximized()
    }
}

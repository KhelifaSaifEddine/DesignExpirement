import QtQuick 2.0

Item {
    Rectangle{
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#2C5364" }
            GradientStop { position: 5.0; color: "#203A43" }
            GradientStop { position: 1.0; color: "#0F2027" }
        }
    }
    Rectangle{
        id: blackRect
        anchors.centerIn: parent
        width: 270
        height: width
        color: "#000000"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                scaleIN.start()
            }
            onExited: {
                scaleOUT.start()
            }
        }
        transform: Rotation{
            id: rotate
            origin.x: blackRect.width/2
            origin.y: blackRect.height/2
            angle: 45
        }
        PropertyAnimation{
            id: scaleIN
            target: blackRect
            property: "width"
            duration: 170
            easing.type: Easing.InQuad
            to: 300
        }
        PropertyAnimation{
            id: scaleOUT
            target: blackRect
            property: "width"
            duration: 170
            easing.type: Easing.InQuad
            to: 270
        }
    }
    Text {
        id: titl1
        text: qsTr("FREDKILLAH")
        /*anchors.bottom: blackRect.bottom
        anchors.bottomMargin: 80
        anchors.horizontalCenter: blackRect.horizontalCenter*/
        anchors.centerIn: blackRect
        color: "#f0f0f0"
        font.pointSize: 18
        font.bold: true
    }
}

import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 51
        y: 91
        width: 100
        height: 100
        color: "#ea0909"


        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 186
        y: 91
        width: rectangle.width
        height: rectangle.height
        color: "#09ea18"
    }

    Rectangle {
        id: rectangle2
        x: 324
        y: 91
        width: 100
        height: 100
        color: "#0918ea"
    }

    Connections {
        target: mouseArea
        onClicked: {
            print("clicked")
            rectangle.width = 50
            rectangle.height = 150
        }
    }


}

/*##^##
Designer {
    D{i:2;anchors_height:100;anchors_width:100}
}
##^##*/

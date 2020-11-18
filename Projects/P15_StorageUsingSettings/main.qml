import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.2
import Qt.labs.settings 1.1

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Settings Demo")

    Rectangle{
        id:rootRectId
        anchors.fill: parent
        color: "blue"

        MouseArea{
            anchors.fill: parent

            onClicked: {
                colorDialog.open()
            }
        }
    }

    ColorDialog {
        id: colorDialog
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + colorDialog.color)
            rootRectId.color = colorDialog.color
        }
        onRejected: {
            console.log("Canceled")
        }
    }


    Settings {
        category: "main_window"
        property alias x: window.x
        property alias y: window.y
        property alias width: window.width
        property alias height: window.height
    }

    Settings {
        category: "main_window"
        property alias root_rect_color: rootRectId.color
    }

}

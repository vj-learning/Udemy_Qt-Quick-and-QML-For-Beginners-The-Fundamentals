import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.2
import Qt.labs.settings 1.1

Window {
    id: window
    width: mainWindowSettingsId.width
    height: mainWindowSettingsId.height
    x: mainWindowSettingsId.x; y: mainWindowSettingsId.y

    visible: true
    title: qsTr("Settings Demo")

    Rectangle{
        id:rootRectId
        anchors.fill: parent
        color: rootRectSettingsId.root_rect_color

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
        id: mainWindowSettingsId
        category: "main_window"
        property int x: 0
        property int y: 0
        property int width: 600
        property int height: 500
    }

    Settings {
        id: rootRectSettingsId
        category: "root_rect"
        property string root_rect_color: "blue"
    }

    Component.onDestruction: {
        mainWindowSettingsId.x = window.x
        mainWindowSettingsId.y = window.y
        mainWindowSettingsId.width = window.width
        mainWindowSettingsId.height = window.height

        rootRectSettingsId.root_rect_color = rootRectId.color
    }

}

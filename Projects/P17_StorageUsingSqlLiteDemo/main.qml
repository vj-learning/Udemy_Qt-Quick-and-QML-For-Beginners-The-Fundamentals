import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.2
import QtQuick.LocalStorage 2.12
import "sqlLiteDatabase.js" as MyDB

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Storage using SqlLite Demo")

    property var db ;

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

    Component.onCompleted: {
        MyDB.dbInit()
        MyDB.readData()
    }

    Component.onDestruction: {
        MyDB.storeData()
    }

}

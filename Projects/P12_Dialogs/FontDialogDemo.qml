import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2

Rectangle{
    id:fileDialogDemoRectId
    width: 270;height: 230;
    border.color: "black"
    border.width: 5
    color: "aliceblue"

    Column{
        spacing: 20
        padding: 20

        Button{
            text: "Select Font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: fontDialog.open()
        }

        Text {
            id: sampleTextId
            text: qsTr("Hello World !")
            //font: fontDialog.currentFont
        }
    }


    FontDialog {
         id: fontDialog
         title: "Please choose a font"
         font: Qt.font({ family: "Arial", pointSize: 24, weight: Font.Normal })
         onAccepted: {
             console.log("You chose: " + fontDialog.font)
             sampleTextId.font = fontDialog.font
         }
         onRejected: {
             console.log("Canceled font dialog")
         }
     }
}

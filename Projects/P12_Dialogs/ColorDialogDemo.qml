import QtQuick 2.12
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle{
    id:colorDialogDemoRectId
    width: 270;height: 230;
    border.color: "black"
    border.width: 5
    color: "aliceblue"

    ColumnLayout{
        anchors.centerIn: parent


        Button{
            text: "Pick a Color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: colorDialog.open()
        }

        RowLayout{
            Label{
                text: "Current Color: "
            }

            Rectangle{
                width: 100; height: 30;
                color: colorDialog.currentColor
            }
        }

        RowLayout{
            Label{
                text: "Selected Color: "
            }

            Rectangle{
                width: 100; height: 30;
                color: colorDialog.color
            }
        }

    }

    ColorDialog{
        id: colorDialog
        title: "Please choose a color"


        onAccepted: {
            console.log("You chose: " + colorDialog.color)
        }
        onRejected: {
            console.log("Canceled")
        }
    }
}

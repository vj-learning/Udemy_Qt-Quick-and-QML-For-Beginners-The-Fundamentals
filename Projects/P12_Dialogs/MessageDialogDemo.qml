import QtQuick 2.12
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5

Rectangle{
    id:messageDialogDemoRectId
    width: 270;height: 230;
    border.color: "black"
    border.width: 5
    color: "aliceblue"

    Button{
        text: "Get Message"
        anchors.centerIn: parent
        onClicked: messageDialog.open()
    }

    MessageDialog {
        id: messageDialog
        title: "May I have your attention please"
        text: "It's so cool that you are using Qt Quick."
        onAccepted: {
            console.log("And of course you could only agree.")
        }
    }
}

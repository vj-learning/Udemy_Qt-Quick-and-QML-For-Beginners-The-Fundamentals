import QtQuick 2.12
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5

Rectangle{
    id:fontDialogDemoRectId
    width: 270;height: 230;
    border.color: "black"
    border.width: 5
    color: "aliceblue"

    Button{
        text: "Open File"
        anchors.centerIn: parent
        onClicked: fileDialog.open()
    }
    Row{
        width: parent.width

        Label{
            text: "Files Selected:"
        }

        Text {
            id: selectedFiles
            width: parent.width
            text: qsTr("")
            wrapMode: Text.Wrap
        }
    }



    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.desktop
        selectMultiple: true
        nameFilters: ["Text files (*.txt)", "HTML files (*.html *.htm)"]

        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)
            var flist=""
            for(var i=0;i<fileDialog.fileUrls.length;i++){
                flist+=(fileDialog.fileUrls[i]+"\n")
            }

            selectedFiles.text = flist
        }
        onRejected: {
            console.log("Canceled")
            selectedFiles.text = "Please select file"
        }
    }
}

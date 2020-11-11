import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5

Window {
    width: 840
    height: 480
    visible: true
    title: qsTr("Hello World")

    GridLayout{
        columns: 3
        anchors.fill: parent
        columnSpacing: 10
        rowSpacing: 10

        ColorDialogDemo{}

        FileDialogDemo{}

        FontDialogDemo{}

        MessageDialogDemo{}


        Rectangle{
            id:customDialogDemoRectId
            width: 270;height: 230;
            border.color: "black"
            border.width: 5
            color: "aliceblue"
        }

        Rectangle{
            id:extraDialogDemoRectId
            width: 270;height: 230;
            border.color: "black"
            border.width: 5
            color: "aliceblue"
        }

    }
}

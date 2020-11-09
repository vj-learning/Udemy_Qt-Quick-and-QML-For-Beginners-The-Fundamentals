import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Row{
        spacing: 5
        width:parent.width
        height: parent.height

        Label{
            width: 50;height:100;
            text: "First Name:"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
        }

        TextField{
            width: 85;height:30
            placeholderText: "Type ur First Name"
            //horizontalAlignment: Qt.AlignHCenter
            //verticalAlignment: Qt.AlignVCenter
            //horizontalCenter: parent.horizontalCenter
            //anchors.centerIn: parent
            anchors.verticalCenter: parent.verticalCenter

            onEditingFinished: {
                console.log("Entered First Name: "+text)
            }

        }
    }
}

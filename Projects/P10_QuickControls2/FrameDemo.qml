import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle{
    width: 150; height: 120
    color: "yellow"
    border.color: "black"
    border.width: 5

    Frame{
        anchors.centerIn: parent
        spacing: 2
        height: 100

        ColumnLayout {
             anchors.fill: parent
             spacing: 0

             CheckBox {indicator.width: 15;indicator.height: 15;font.pixelSize: 15; text: qsTr("E-mail") }
             CheckBox {indicator.width: 15;indicator.height: 15;font.pixelSize: 15; text: qsTr("Calendar") }
             CheckBox {indicator.width: 15;indicator.height: 15;font.pixelSize: 15; text: qsTr("Contacts") }
         }
    }
}

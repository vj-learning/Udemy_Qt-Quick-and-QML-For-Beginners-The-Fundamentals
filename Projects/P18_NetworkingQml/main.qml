import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 370
    visible: true
    title: qsTr("Networking in Qml")

    Row{
        spacing: 5
        anchors.fill: parent

        HttpDataUsingXHR_Demo{}

        RestApiConsumeDemo{}
    }
}

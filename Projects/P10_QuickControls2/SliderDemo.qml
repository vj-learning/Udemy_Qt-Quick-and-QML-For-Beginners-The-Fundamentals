import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Column{
        width: parent.width
        spacing: 10

        Slider{
            id: volumeSliderId
            implicitWidth: 120
            anchors.horizontalCenter: parent.horizontalCenter
            from:0
            to:100
            stepSize: 5

            onValueChanged: {
                //volumeValueTextId.text=value
            }
        }

        Text {
            id: volumeValueTextId
            anchors.horizontalCenter: parent.horizontalCenter
            text: volumeSliderId.value
        }
    }
}

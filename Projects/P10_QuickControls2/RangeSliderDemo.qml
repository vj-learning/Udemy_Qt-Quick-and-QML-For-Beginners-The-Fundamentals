import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Row{
        spacing: 10
        RangeSlider{
            implicitHeight: 90
            anchors.verticalCenter: parent.verticalCenter

            from:1000
            to: 25000
            orientation: Qt.Vertical

            first.value: 5999
            second.value: 19999

            first.onValueChanged: {
                priceRangeTextId.text = first.value + " to " + second.value
            }

            second.onValueChanged: {
                priceRangeTextId.text = first.value + " to " + second.value
            }
        }

        Text {
            id: priceRangeTextId
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("")
        }
    }


}

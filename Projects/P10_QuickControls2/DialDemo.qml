import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Dial{
        anchors.centerIn: parent
        width: 80;
        minimumValue: 0
        maximumValue: 5
        stepSize: 1
        value: 2
        tickmarksVisible: true

        onValueChanged: {
            console.log("Fan speed at "+value)
        }
    }
}

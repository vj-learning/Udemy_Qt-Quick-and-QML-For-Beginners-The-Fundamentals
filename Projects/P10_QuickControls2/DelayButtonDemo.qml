import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4   // circle btn else default rect btn

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5


    DelayButton{
        delay: 2000
        text: "Alarm"
        width: 70
        anchors.centerIn: parent

        onActivated: {
            console.log("Alarm activated....")
        }

        onProgressChanged: {
            console.log("Current Progress: "+progress)
        }

    }
}

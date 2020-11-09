import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Column{
        width: parent.width
        //height: parent.height

        y: 20
        spacing: 30


        ProgressBar{
            anchors.horizontalCenter: parent.horizontalCenter


            from: 0
            to: 100
            value: 78
        }

        ProgressBar{
            indeterminate: true
            anchors.horizontalCenter: parent.horizontalCenter
        }


    }
}

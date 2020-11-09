import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Button{
        id:btn1Id
        text: "show/Hide Loader"
        anchors.centerIn: parent

        onClicked: {
            console.log("Button 1 Clicked....")
            mainBusyIndicatorId.running=true
            mainBusyIndicatorId.visible=true
        }

        onDoubleClicked: {
            console.log("Button 1 is doubble clicked....")
            mainBusyIndicatorId.running=false
            mainBusyIndicatorId.visible=false
        }
    }
}

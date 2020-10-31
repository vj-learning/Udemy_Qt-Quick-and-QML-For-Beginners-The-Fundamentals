import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainWindowId
    width: 300
    height: 200
    visible: true
    title: qsTr("Signal and Slot Demo")

    Rectangle{
        id:rootRectId
        anchors.centerIn: parent
        width: 200; height: 150
        //color: "yellow"

        signal messageReceived(string person,string notice)

        Component.onCompleted: {
            rootRectId.messageReceived.connect(sendToPost)
            rootRectId.messageReceived.connect(sendToTelegraph)
            rootRectId.messageReceived.connect(sendToEmail)
        }

        function sendToPost(person, notice) {
            console.log("Sending to post: " + person + ", " + notice)
        }
        function sendToTelegraph(person, notice) {
            console.log("Sending to telegraph: " + person + ", " + notice)
        }
        function sendToEmail(person, notice) {
            console.log("Sending to email: " + person + ", " + notice)
        }

        Rectangle{
            id:sendBtnRectId
            width: 70; height: 70;
            radius: 70
            color: "green"
            anchors.horizontalCenter : parent.horizontalCenter
            y:20

            Text{
                text: "Wish\nUser"
                anchors.centerIn: parent
                color: "white"
                font{
                    bold:true
                    pointSize:12
                }

            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    rootRectId.messageReceived("Vijay", "Happy Birthday")
                }
            }
        }
    }
}

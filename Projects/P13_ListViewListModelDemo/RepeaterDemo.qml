import QtQuick 2.12

Rectangle{
    width: 260
    height: 360
    border.color: "black"
    radius: 5

    Flickable{
        anchors.fill: parent
        contentHeight: columnId.implicitHeight

        Column{
            id: columnId
            anchors.fill: parent
            height: 360
            spacing: 2

            Repeater{
                anchors.fill: parent
                height: parent.height
                model: 31
                clip: true

                delegate: Rectangle{
                    width: parent.width-5; height: 30
                    radius: 15
                    color: "coral"

                    Text {
                        id: textId
                        anchors.centerIn: parent
                        text: (modelData +1)
                    }
                }
            }
        }
    }


}

import QtQuick 2.12

Rectangle{
    id: monthListRectId
    width: 260
    height: 360
    border.color: "black"
    radius: 5

    ListView{
        id:monthsListViewId
        anchors.fill: parent
        clip: true

        model: ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sept","Oct","Nov","Dec"]
        delegate: monthsDelegateId
    }

    Component{
        id: monthsDelegateId

        Rectangle{
            id:rectId
            width: 150; height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            radius: 10
            color: "powderblue"
            border.color: "blue"

            Text{
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    console.log("Your selected Month: "+modelData)
                }
            }
        }
    }
}

import QtQuick 2.12

Item {
    Rectangle{
        id:moouseClickableRectId
        x: 125
        y: 8
        width: 100; height: 50
        color: "red"
        anchors.horizontalCenter: parent

        MouseArea{
            anchors.fill: parent

            onClicked: {
               mouseResTextId.text="Mouse Point at ("+mouse.x+" , "+mouse.y+")"
            }
        }
    }

    Text {
        id: mouseResTextId
        x:115; y:70
        text: "Not Available"
        anchors.horizontalCenter: parent
    }

    Rectangle{
        id:dragableRectId
        x:10; y:100
        width: 20; height: 20
        color: "green"



        MouseArea{
            anchors.fill: parent
            drag.target: dragableRectId
            drag.axis: Drag.XAndYAxis
            drag.minimumX: 0
            drag.minimumY: 0
            drag.maximumX:parent.parent.parent.width-dragableRectId.width
            drag.maximumY: parent.parent.parent.height-dragableRectId.height
        }

        onXChanged: {
            dragableRectPosTextId.text="Dragable Rect at ("+dragableRectId.x+","+dragableRectId.y+")."
        }
    }

    Text {
        id: dragableRectPosTextId
        text: "N/A"
    }
}

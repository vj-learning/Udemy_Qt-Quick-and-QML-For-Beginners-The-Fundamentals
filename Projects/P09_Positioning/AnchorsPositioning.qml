import QtQuick 2.12

Item {
    implicitHeight: 300
    implicitWidth: 300

    Rectangle{
        id:centerRectId
        width: 100;height: 100
        implicitHeight: 100; implicitWidth: 100
        color: "green"
        anchors.centerIn: parent

        Text{
            text: "Ceter Rect"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:topLeftRectId
        width: 100;height: width
        color: "yellow"
        anchors.right: centerRectId.left
        anchors.bottom: centerRectId.top

        Text{
            text: "Top-Left Rect"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:topRightRectId
        width: 100;height: width
        color: "magenta"
        anchors.left: centerRectId.right
        anchors.bottom: centerRectId.top

        Text{
            text: "Top-Right Rect"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:bottomLeftRectId
        width: 100;height: width
        color: "mediumslateblue"
        anchors.top: centerRectId.bottom
        anchors.right: centerRectId.left

        Text{
            text: "Bottom-Left Rect"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:bottomRightRectId
        width: 100;height: width
        color: "orangered"
        anchors.top: centerRectId.bottom
        anchors.left: centerRectId.right

        Text{
            text: "Bottom-Right Rect"
            anchors.centerIn: parent
            color: "white"
        }
    }


}

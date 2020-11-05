import QtQuick 2.0
import QtQuick.Layouts 1.3

Flow{
    anchors.fill: parent
    layoutDirection: Qt.RightToLeft
    Layout.fillWidth: true

    Rectangle{
        id:rect1Id
        width: 60;height: 50
        color: "green"
        Layout.fillWidth: true

        Text{
            text: "Rect 1"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:rect2Id
        width: 60;height: 50
        color: "yellow"
        Layout.fillWidth: true

        Text{
            text: "Rect 2"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:rect3Id
        width: 60;height: 50
        color: "magenta"
        Layout.fillWidth: true

        Text{
            text: "Rect 3"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:rect4Id
        width: 60;height: 50
        color: "mediumslateblue"

        Text{
            text: "Rect 4"
            anchors.centerIn: parent
            color: "white"
        }
    }

    Rectangle{
        id:rect5Id
        width: 60;height: 50
        color: "orangered"

        Text{
            text: "Rect 5"
            anchors.centerIn: parent
            color: "white"
        }
    }
}

import QtQuick 2.12


Rectangle{
    id:containerRectId
    width: 250;height: 300

    Grid{
        columns: 2
        spacing: 5
        horizontalItemAlignment: Grid.AlignHCenter
        verticalItemAlignment: Grid.AlignVCenter

        Rectangle{
            id:rect1Id
            width: 100;height: 100
            color: "green"

            Text{
                text: "Rect 1"
                anchors.centerIn: parent
                color: "white"
            }
        }

        Rectangle{
            id:rect2Id
            width: 70;height: width
            color: "yellow"

            Text{
                text: "Rect 2"
                anchors.centerIn: parent
                color: "white"
            }
        }

        Rectangle{
            id:rect3Id
            width: 100;height: width
            color: "magenta"

            Text{
                text: "Rect 3"
                anchors.centerIn: parent
                color: "white"
            }
        }

        Rectangle{
            id:rect4Id
            width: 100;height: width
            color: "mediumslateblue"

            Text{
                text: "Rect 4"
                anchors.centerIn: parent
                color: "white"
            }
        }

        Rectangle{
            id:rect5Id
            width: 100;height: width
            color: "orangered"

            Text{
                text: "Rect 5"
                anchors.centerIn: parent
                color: "white"
            }
        }
    }
}

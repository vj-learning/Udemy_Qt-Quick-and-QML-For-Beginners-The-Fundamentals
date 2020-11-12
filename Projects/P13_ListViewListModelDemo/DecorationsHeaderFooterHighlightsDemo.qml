import QtQuick 2.12

Rectangle{
    id: daysListRectId
    width: 260
    height: 360
    border.color: "black"
    radius: 5

    ListView{
        id:daysListViewId
        //implicitWidth: daysDelegateId.implicitWidth
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter

        model: 30
        delegate: daysDelegateId
        header: daysHeaderId
        headerPositioning: ListView.OverlayHeader
        footer: daysFooterId
        footerPositioning: ListView.OverlayFooter
        highlight: daysHighlightId
        highlightMoveDuration: 200
        highlightMoveVelocity: -1
        clip: true
    }

    Component{
        id: daysHighlightId

        Rectangle{
            id:rectId
            anchors.horizontalCenter: parent.horizontalCenter
            width: 150; height: 50
            radius: 5
            color: "fuchsia"
            z: 2
            opacity: 0.4
        }
    }

    Component{
        id: daysFooterId

        Rectangle{
            id:daysFooterRectId
            width: 150; height: 50
            color: "yellowgreen"
            anchors.horizontalCenter: parent.horizontalCenter
            z: 2

            Text {
                id: footerTextId
                text: qsTr("@HCS")
                anchors.centerIn: parent
                color: "red"

                font{
                    bold: true
                    family: "Helvetica"
                    pointSize: 22
                }

                ColorAnimation on color{
                    from: "white"
                    to: "black"
                    duration: 200
                }
            }
        }


    }

    Component{
        id: daysHeaderId

        Rectangle{
            id:daysHeaderRectId
            width: 200; height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: "green"
            z: 2

            Text {
                id: headerTextId
                text: qsTr("Days in Month")
                width: parent.width
                anchors.centerIn: parent
                color: "red"
                wrapMode: Text.Wrap

                font{
                    bold: true
                    family: "Helvetica"
                    pointSize: 22
                }

                ColorAnimation on color{
                    from: "black"
                    to: "white"
                    duration: 200
                }
            }
        }
    }

    Component{
        id: daysDelegateId

        Rectangle{
            id:rectId
            anchors.horizontalCenter: parent.horizontalCenter
            width: 150; height: 50
            radius: 10
            color: "springgreen"
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
                    console.log("Your selected Day: "+modelData)
                    daysListViewId.currentIndex = index
                }
            }
        }
    }
}

import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Flickable{
        width: parent.width
        height: parent.height
        contentHeight: allPageContentId.implicitHeight

        Column{
            id:allPageContentId

            Rectangle{
                width: 120;height: 40;
                color: "red"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Element 1")
                }
            }

            Rectangle{
                width: 120;height: 40;
                color: "green"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Element 2")
                }
            }

            Rectangle{
                width: 120;height: 40;
                color: "blue"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Element 3")
                }
            }

            Rectangle{
                width: 120;height: 40;
                color: "yellow"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Element 4")
                }
            }

            Rectangle{
                width: 120;height: 40;
                color: "lime"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Element 5")
                }
            }
        }

        ScrollBar.vertical: ScrollBar{}
    }
}

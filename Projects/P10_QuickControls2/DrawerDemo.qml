import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow{
    id:myAppWinId
    visible: true
    width: 275
    height: 385
    title:"My App-Drawer Demo"

    header: ToolBar{
        height: 50
        background: Rectangle{
            color: "mintcream"
        }

        RowLayout{
            spacing: 20
            anchors.fill: parent

            ToolButton{
                background:  Rectangle{
                    color: "mintcream"
                }

                icon.source: "images/icons/drawer.png"

                onClicked: {
                    console.log("Toolbutton clicked...")
                    drawerId.open()
                }
            }

            Label{
                id: titleLabel
                text: "Drawer Demo"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            Drawer{
                id: drawerId
                width: 0.66 * myAppWinId.width
                height: myAppWinId.height
                interactive: true

                ColumnLayout{
                    id: content
                    spacing: 0
                    width:parent.width

                    ToolButton{
                        background:  Rectangle{
                            color: "mintcream"
                        }
                        width: parent.width

                        icon.source: "images/icons/drawer.png"

                        onClicked: {
                            console.log("Toolbutton clicked...")
                            drawerId.close()
                        }
                    }

                    Button{
                        width: parent.width
                        height: 50;
                        text: "Item 1"
                        font.pixelSize: 20
                        background: Rectangle{
                            color: "red"
                        }
                        Layout.fillWidth: true

                        onClicked: {
                            console.log("Item 1 is clicked....")
                            drawerId.close()
                        }
                    }

                    Button{
                        width: parent.width
                        height: 50
                        text: "Item 2"
                        font.pixelSize: 20
                        background: Rectangle{
                            color: "green"
                        }
                        Layout.fillWidth: true

                        onClicked: {
                            console.log("Item 2 is clicked....")
                            drawerId.close()
                        }
                    }

                    Button{
                        width: parent.width
                        height: 50
                        text: "Item 3"
                        font.pixelSize: 20
                        background: Rectangle{
                            color: "blue"
                        }
                        Layout.fillWidth: true

                        onClicked: {
                            console.log("Item 3 is clicked....")
                            drawerId.close()
                        }
                    }
                }
            }

        }
    }

    Rectangle{
        anchors.fill: parent
        color: "skyblue"
    }

}

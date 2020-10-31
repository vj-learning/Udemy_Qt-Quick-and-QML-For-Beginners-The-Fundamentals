import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:rootWindowId
    width: 500
    height: 300
    visible: true
    title: qsTr("Rectangle Demo App")

    property string textToShow: "Initial Text"

    Row{
        id:row1Id
        x: 50
        y: 15
        width: 400;height: 135
        spacing: 20

        Rectangle{
            id:row1RedRectId
            width: 100;height: 130
            color: "red"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("App: Red Rectangle is clicked ...")
                    textToShow="Red"
                    row2ResultCircleId.color="red"
                }
            }
        }

        Rectangle{
            id:row1GreenRectId
            width: 100;height: 130
            color: "green"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("App: Green Rectangle is clicked ...")
                    textToShow="Green"
                    row2ResultCircleId.color="green"
                }
            }
        }

        Rectangle{
            id:row1BlueRectId
            width: 100;height: 130
            color: "blue"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("App: Blue Rectangle is clicked ...")
                    textToShow="Blue"
                    row2ResultCircleId.color="blue"
                }
            }
        }
    }

    Row{
        id:row2Id
        x: 200
        y: 163
        spacing: 30

        Rectangle{
            id:row2ResultCircleId
            width: 100;height: 100;
            radius: 100
            color: "yellow"

            Text {
                id: resultTextId
                text: textToShow
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    resultTextId.text="Breaking Property Binding"
                    row2ResultCircleId.color="cyan"
                }
            }
        }
    }
}

import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 120
    color: "yellow"
    border.color: "black"
    border.width: 5

    GroupBox{
        title: "Choose bonus"
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 0

        Column{
            spacing: -10
            RadioButton{
                text: "Coke"
            }

            RadioButton{
                text: "Green Tea"
            }

            RadioButton{
                text: "Ice Cream"
            }
        }
    }
}

import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Column{
        spacing: 2
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox{
            text:"Marathi"
            checked: true

            onCheckStateChanged: {
                console.log("isMale?: "+checked);
            }
        }

        CheckBox{
            text:"English"
        }

        CheckBox{
            text:"Chinease"
            enabled: false
        }
    }
}

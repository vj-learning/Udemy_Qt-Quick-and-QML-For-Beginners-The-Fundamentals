import QtQuick 2.0

Item {
    id:btnRootId
    property alias buttonText: btnText.text
    width: btnRectId.width
    height: btnRectId.height

    signal buttonHandler

    Rectangle{
        id:btnRectId
        width:btnText.implicitWidth
        height: btnText.implicitHeight
        color: "yellow"

        Text {
            id: btnText
            text: "Defalut"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                btnRootId.buttonHandler();
            }
        }
    }

}

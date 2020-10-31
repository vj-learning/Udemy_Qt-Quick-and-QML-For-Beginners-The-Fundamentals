import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("Hello World")

    Column{
        spacing: 20

        MButton{
            buttonText:"Button 1"
            onButtonHandler:{
                console.log("Button_1 Handlar: Button 1 Click")
            }
        }

        MButton{
            buttonText:"Button 2"
            onButtonHandler: {
                console.log("Button_2 Handlar: Button 2 Click")
            }
        }
    }
}

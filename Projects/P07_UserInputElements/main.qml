import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3

Window {
    width: 800
    height: 700
    visible: true
    title: qsTr("User Input Elemets Demo")

    GridLayout{
        x: 5; y:5
        Layout.maximumHeight: 700
        Layout.maximumWidth: 780
        columns: 2
        columnSpacing: 10
        rowSpacing: 15


        Rectangle{
            id:txtInputRectId
            width: 350; height: 150
            color: "aliceblue"

            TextInputDemo{}
        }

        Rectangle{
            id:txtEditRectId
            width: 350; height: 150
            color: "antiquewhite"

            TextEditDemo{}
        }

        Rectangle{
            id:txtMouseAreaRectId
            width: 350; height: 150
            color: "aqua"

            MouseAreaDemo{}
        }

        Rectangle{
            id:txtKeyAttachedRectId
            width: 350; height: 150
            color: "aquamarine"

            KeyAttachedDemo{}
        }

        Rectangle{
            id:txtKeyNavRectId
            width: 350; height: 150
            color: "chartreuse"
        }

        Rectangle{
            id:txtFocusScopeRectId
            width: 350; height: 150
            color: "deeppink"
        }
    }
}

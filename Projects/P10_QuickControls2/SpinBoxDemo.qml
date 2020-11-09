import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    SpinBox {
         id: spinbox
         from: 0
         value: 50
         to: 100
         stepSize: 5
         anchors.centerIn: parent
         editable: true

         onValueChanged: {
             console.log("Current Value "+value)
         }
     }
}

import QtQuick 2.12
import QtQuick.Controls 2.15

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    SplitView {
         anchors.fill: parent
         orientation: Qt.Horizontal

         Rectangle {
             implicitWidth: 40
             SplitView.maximumWidth: 50
             color: "lightblue"
             Label {
                 text: "View 1"
                 anchors.centerIn: parent
             }
         }
         Rectangle {
             id: centerItem
             SplitView.minimumWidth: 10
             SplitView.fillWidth: true
             color: "lightgray"
             Label {
                 text: "View 2"
                 anchors.centerIn: parent
             }
         }
         Rectangle {
             implicitWidth: 50
             color: "lightgreen"
             Label {
                 text: "View 3"
                 anchors.centerIn: parent
             }
         }
     }
}

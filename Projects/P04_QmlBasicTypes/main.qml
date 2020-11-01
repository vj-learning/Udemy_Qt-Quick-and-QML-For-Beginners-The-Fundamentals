import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 540
    height: 450
    visible: true
    title: qsTr("Hello World")

    Item{
        id:rootItemId
        x:20; y:20;
        width: 400; height: 350;

        Rectangle{
            id:rootItemRectId
            anchors.fill: parent
            color: "yellow"
            border.color: "black"
        }

        Rectangle{
            id:childRectId
            x:50; y:50  // co-ordinate location base on parent (default location is (0,0)
            width: 80; height: 50
            color: "red"
        }

        Text{
            id:textId
            anchors.centerIn: parent
            text: "Sample Text"
            color: "green"
            font{
                family: "Helvetica";
                pointSize: 13;
                bold: true
            }
        }

        Image {
            id: imgFromResource
            x:10; y:200
            source: "images/LAN Standards.png"
            width: 100; height: 120;
        }

        Image {
            id: imgFromFile
            x:120; y:200
            source: "file:C:/Users/vragawade/Pictures/AWS Bill.png" // method 2: file:///
            width: 100; height: 120;
        }

        Image {
            id: imgFromUrl
            x:230; y:200
            source: "https://raw.githubusercontent.com/vj-learning/Udemy_Qt-Quick-and-QML-For-Beginners-The-Fundamentals/master/Opera%20Snapshot_2020-04-16_183703_www.facebook.com.png"
            width: 100; height: 120;
        }

    }
}

import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    SwipeView{
        id:swipeViewId
        anchors.fill: parent
        currentIndex: pageIndicatorId.currentIndex

        Image {
            id: img1Id
            source: "images/sample1.jpg"
            width: 50;height: 80
        }

        Image {
            id: img2Id
            source: "images/sample2.jpg"
            width: 50;height: 80
        }

        Image {
            id: img3Id
            source: "images/sample3.jpg"
            width: 50;height: 80
        }
    }

    PageIndicator{
        id: pageIndicatorId
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        currentIndex: swipeViewId.currentIndex
        count: swipeViewId.count
        interactive: true
    }
}

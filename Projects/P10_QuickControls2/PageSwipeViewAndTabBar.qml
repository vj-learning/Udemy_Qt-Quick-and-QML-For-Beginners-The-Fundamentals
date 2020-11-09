import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Page{
        anchors.fill: parent
        implicitHeight: 100


        header: Label{
            text: "HCS Training"
            horizontalAlignment: Text.AlignHCenter
        }

        SwipeView{
            id:hcsTopicSwipeViewId
            anchors.fill: parent
            currentIndex:hcsTabBarId.currentIndex

            Image{
                id:img1Id
                width: 50; height: 100;
                source: "images/slider/topic_1.png"
            }

            Image{
                id:img2Id
                width: 50; height: 100;
                source: "images/slider/topic_2.png"
            }

            Image{
                id:img3Id
                width: 50; height: 100;
                source: "images/slider/topic_3.png"
            }

            Image{
                id:img4Id
                width: 50; height: 100;
                source: "images/slider/topic_4.png"
            }

            Image{
                id:img5Id
                width: 50; height: 100;
                source: "images/slider/topic_5.png"
            }
        }

        footer: TabBar{
            id:hcsTabBarId
            currentIndex: hcsTopicSwipeViewId.currentIndex
            width: parent.width

            TabButton{
                text: "T 1"
                width: implicitWidth
                height: implicitHeight
            }

            TabButton{
                text: "T 2"
                width: implicitWidth
                height: implicitHeight
            }

            TabButton{
                text: "T 3"
                width: implicitWidth
                height: implicitHeight
            }
            TabButton{
                text: "T 4"
                width: implicitWidth
                height: implicitHeight
            }
            TabButton{
                text: "T 5"
                width: implicitWidth
                height: implicitHeight
            }
        }
    }
}

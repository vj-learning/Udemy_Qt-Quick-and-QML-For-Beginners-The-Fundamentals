import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 930
    height: 450
    visible: true
    title: qsTr("Qt Quick Positioning")

    GridLayoutDemo{}

    Row{
        y:151
        spacing: 10

        Rectangle{
            id:anchorsPositioningDemoRectId
            width: 310; height: 450;
            border.color: "black"
            border.width: 3
            //color: "chartreuse"

            AnchorsPositioning{
                anchors.centerIn: anchorsPositioningDemoRectId
            }
        }

        Rectangle{
            id:layoutsDemoRectId
            width: 310; height: 450;
            color: "cornsilk"

            GridDemo{
                anchors.centerIn: layoutsDemoRectId
            }
        }

        Column{
            Rectangle{
                id:flowDemoRectId
                width: 310; height: 250;
                color: "lightblue"

                FlowDemo{}
            }

            Rectangle{
                id:dragableRectId
                x:0; y:200
                width: 20; height: 20
                color: "green"

                MouseArea{
                    anchors.fill: parent
                    drag.target: dragableRectId
                    drag.axis: Drag.XAxis
                    drag.minimumX: 0
                    drag.maximumX: 300//flowDemoRectId.width-dragableRectId.width

                }

                onXChanged: {
                    flowDemoRectId.width=250-dragableRectId.x
                }
            }
        }
    }    
}

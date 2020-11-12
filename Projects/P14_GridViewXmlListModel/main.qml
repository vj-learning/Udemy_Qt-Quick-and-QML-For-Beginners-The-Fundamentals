import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.XmlListModel 2.12

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Grid View with XML Model")



    GridView{
        id:gridViewId
        anchors.fill: parent
        leftMargin: 30; topMargin: 10
        visible: true


        model: listModelId
        delegate: listModelDelegate
    }

    ListView{
        id:listViewId
        anchors.fill: parent
        leftMargin: 30; topMargin: 10
        visible: false

        model: xmlModelId
        delegate: xmlModelDelegateId
    }

    Component{
        id: xmlModelDelegateId

        Rectangle{
            id: rectId
            width: parent.width; height: columnId.implicitHeight;
            color: "yellow"
            border.color: "black"
            border.width: 3
            radius: 20


            Column{
                id: columnId
                spacing: 2
                width: parent.width
                anchors.fill: parent

                Text {
                    id: courseTextId
                    text: coursename+" ("+year+")"
                    topPadding: 10; leftPadding: 10
                    width: parent.width
                    wrapMode: Text.Wrap

                    font{
                        pointSize: 11
                        bold: hot==="true"?true:false
                    }
                }

                Text {
                    id: instructorTextId
                    text: instructor
                    font.pointSize: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                    bottomPadding: 10
                }
            }
        }
    }

    XmlListModel{
        id: xmlModelId
        source: "qrc:///xml/employees.xml"
        query: "/courses/course"

        XmlRole { name: "instructor"; query: "instructor/string()" }
        XmlRole { name: "year"; query: "year/number()" }
        XmlRole { name: "coursename"; query: "coursename/string()" }
        XmlRole { name: "hot"; query: "@hot/string()" }

        onStatusChanged: {
            if(status===XmlListModel.Ready)  console.log("Data loading completed... Total Count: "+count)
            if(status===XmlListModel.Loading)  console.log("Data is loading ... ")
            if(status===XmlListModel.Error)  console.log("Failed to load data... Error: "+errorString())
            if(status===XmlListModel.Null)  console.log("No XML data has been set for this model")
        }
    }

    Component{
        id: listModelDelegate

        Rectangle{
            id:rectId
            width: 100; height: width
            color: "yellowgreen"
            border.color: "black"
            border.width: 3
            radius: 20

            Text {
                id: textId
                text: msampleTxt
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
    }

    ListModel{
        id: listModelId

        ListElement{
            msampleTxt:"Sample 1"
        }

        ListElement{
            msampleTxt:"Sample 2"
        }

        ListElement{
            msampleTxt:"Sample 3"
        }

        ListElement{
            msampleTxt:"Sample 4"
        }

        ListElement{
            msampleTxt:"Sample 5"
        }

        ListElement{
            msampleTxt:"Sample 6"
        }

        ListElement{
            msampleTxt:"Sample 7"
        }

        ListElement{
            msampleTxt:"Sample 8"
        }
    }
}

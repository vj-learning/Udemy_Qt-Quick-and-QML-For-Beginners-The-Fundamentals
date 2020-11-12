import QtQuick 2.12

Rectangle{
    width: 260
    height: 360
    border.color: "black"
    radius: 5

    ListView{
        id:listViewId
        anchors.fill: parent
        clip: true

        model: empListModelId
        delegate: empDelegateId
    }

    Component{
        id: empDelegateId

        Rectangle{
            id:rectId
            width: parent.width; height: 50
            radius: 10
            color: "yellowgreen"
            border.color: "blue"

            Text{
                id: textId
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 20
                text: emp_id + " " + emp_name
            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    console.log("Selected Employee: "+emp_id+" - "+emp_name)
                }
            }
        }
    }

    ListModel{
        id: empListModelId

        ListElement{
            emp_id:"24901"; emp_name:"Raju Patel"
        }
        ListElement{
            emp_id:"24902"; emp_name:"Ajay chavan"
        }
        ListElement{
            emp_id:"24903"; emp_name:"K Rajan"
        }
        ListElement{
            emp_id:"24904"; emp_name:"Praful Sawant"
        }
        ListElement{
            emp_id:"24905"; emp_name:"Ashok Parab"
        }
        ListElement{
            emp_id:"24906"; emp_name:"Anil Mathkar"
        }
        ListElement{
            emp_id:"24907"; emp_name:"Babalu B"
        }
        ListElement{
            emp_id:"24908"; emp_name:"Nilesh Choke"
        }
        ListElement{
            emp_id:"24909"; emp_name:"Atul Gaikwad"
        }
        ListElement{
            emp_id:"24910"; emp_name:"Vikas Gawas"
        }
    }
}


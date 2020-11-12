import QtQuick 2.12

Rectangle{
    id: container
    width: 260
    height: 360
    border.color: "black"
    radius: 5

    ListView {
        id:listViewId
        anchors.fill: parent
        clip: true

        model: animalsModel
        delegate: animalsDelegateId

        section.property: "size"
        section.criteria: ViewSection.FullString
        section.delegate: sectionHeading
    }

    // The delegate for each section header
    Component {
        id: sectionHeading
        Rectangle {
            width: container.width
            height: 30
            color: "lightsteelblue"

            required property string section

            Text {
                text: section
                font.bold: true
                font.pixelSize: 20
                font.capitalization: Font.Capitalize
            }
        }
    }

    Component{
        id: animalsDelegateId

        Rectangle{
            id:rectId
            width: parent.width; height: 20
            radius: 10
            color: "yellowgreen"
            border.color: "blue"

            Text{
                id: textId
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 13
                text: name + " " + size
            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    console.log("Selected Animal: "+name+" - "+size)
                }
            }
        }
    }

    ListModel{
        id: animalsModel

        ListElement{
            name:"Abas"; size:"Large"
        }
        ListElement{
            name:"Raji"; size:"large"
        }
        ListElement{
            name:"Vanka"; size:"Large"
        }

        ListElement{
            name:"Yash"; size:"Small"
        }
        ListElement{
            name:"Rupa"; size:"small"
        }
        ListElement{
            name:"Sandeep"; size:"Medium"
        }
        ListElement{
            name:"Abas2"; size:"Large"
        }
    }
}

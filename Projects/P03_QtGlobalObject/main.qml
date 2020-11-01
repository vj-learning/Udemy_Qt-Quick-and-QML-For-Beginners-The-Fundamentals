import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 500
    height: 400
    visible: true
    title: qsTr("Qt Global Object")

    property var fontsAvailable: Qt.fontFamilies()

    property string myProp: "Vijay"
    // Default handler to a property
    onMyPropChanged: {
        console.log("myProp changed to "+myProp)
    }

    Rectangle{
        id: rootRectID
        width: 100;height: 75
        anchors.centerIn: parent
        color: "red"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                //Qt.quit()

                console.log("# of Fonts available: "+fontsAvailable.length)
                var somefonts=""
                fontsAvailable.some(function loop(value,index){
                    somefonts+="\t"+index+"."+value+"\n"

                    return index===5
                })
                console.log("First 5 fonts:\n"+somefonts)

                console.log("Platforms:"+Qt.platform.os)
            }
        }
    }
}

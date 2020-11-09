import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 120
    color: "yellow"
    border.color: "black"
    border.width: 5

    ComboBox{
        id:digitComboId
        y:10
        model:["One","Two","Three","Four"]
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.topMargin: 30

        onActivated: {
            var res = "Selected Option: Index="+currentIndex+" with value="+currentText;
            console.log(res)
            selectedDigitTextId.text=res
        }
    }

    Text{
        id:selectedDigitTextId
        text: ""
        width: 120
        //anchors.centerIn: parent
        anchors.horizontalCenter: parent.horizontalCenter
        wrapMode: Text.Wrap
        anchors.top: digitComboId.bottom
    }

    ComboBox{
        id:favFruitComboBoxId
        anchors.top: selectedDigitTextId.bottom
        editable: true
        textRole: "text"
        model: ListModel {
            id: fruitModel
            ListElement { text: "Banana";location:"jalgaon" }
            ListElement { text: "Apple"; location:"J&K"}
            ListElement { text: "Coconut"; location:"kokan" }
        }
        onAccepted: {
            if (find(editText) === -1)
                fruitModel.append({text: editText})
        }
    }

    Button{
        text: "Get Fruit"
        anchors.top: favFruitComboBoxId.bottom
        onClicked: {
            var selectedFruit=fruitModel.get(favFruitComboBoxId.currentIndex)
            console.log("Fruit Name:"+selectedFruit.text+ " and Location: "+selectedFruit.location)
        }
    }
}

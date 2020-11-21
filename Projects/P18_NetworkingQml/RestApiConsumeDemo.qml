import QtQuick 2.12
import QtQuick.Controls 2.12
import "XHR_DataFetch.js" as DataFetcher

Rectangle{
    id: rect2Id
    width: 300
    height: 350
    color: "beige"
    border.width: 3

    Column{
        anchors.fill: parent
        spacing: 5

        ListView{
            id: jokeListViewId
            height: 300
            width: parent.width -10
            clip: true
            anchors.horizontalCenter: parent.horizontalCenter

            model: jokeListModelId
            delegate: jokeDelegateId
        }

        RoundButton{
            id: fetchDataSyncBtnId
            text: 'Fetch Jokes'
            height: 25
            anchors.horizontalCenter: parent.horizontalCenter


            onClicked: {
                var num=Math.ceil(Math.random() * 500)
                DataFetcher.getPageDataAsync("http://api.icndb.com/jokes/random/"+num,setJokeListModel)
            }

        }
    }

    function setJokeListModel(data){
        if(data){
            var object = JSON.parse(data)

            jokeListModelId.clear()
            object.value.forEach(function(jokeObj){
                jokeListModelId.append({"joke":jokeObj.joke})
            })

        }else{
            console.log("Something went wrong")
        }
    }

    ListModel{
        id: jokeListModelId
    }

    Component{
        id: jokeDelegateId

        Rectangle{
            width: jokeListViewId.width
            height: jokeTextId.implicitHeight+20
            color: "khaki"
            border.color: "indigo"
            radius: 5

            Text {
                id: jokeTextId
                text: joke

                height: parent.height
                width: parent.width
                anchors.centerIn: parent
                font.pointSize: 13
                wrapMode: Text.WordWrap
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

}

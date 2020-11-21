import QtQuick 2.12
import QtQuick.Controls 2.12
import "XHR_DataFetch.js" as DataFetcher

Rectangle{
    id: rect1Id
    width: 300
    height: 350
    color: "beige"
    border.width: 3

    Column{
        anchors.fill: parent
        spacing: 5

        ScrollView{
            height: 250
            width: parent.width

            TextArea{
                id: txtArea1Id
                width: parent.width
                height: 250
                text: "click on button to start fetching"
                textFormat: TextArea.RichText
            }
        }

        RoundButton{
            id: fetchDataSyncBtnId
            text: 'Fetch Data Sync'
            //width: parent.width -30
            height: 25
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                DataFetcher.getPageDataSync("http://www.facebook.com")
            }

        }

        RoundButton{
            id: fetchDataAsyncBtnId
            text: 'Fetch Data ASync'
            //width: parent.width - 30
            height: 25
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                DataFetcher.getPageDataAsync("http://issc.unipune.ac.in/",DataFetcher.setTextArea1Text)
            }
        }
    }

}

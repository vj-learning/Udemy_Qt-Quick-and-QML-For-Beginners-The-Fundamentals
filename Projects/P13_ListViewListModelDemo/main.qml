import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Window {
    width: 800
    height: 400
    visible: true
    title: qsTr("List View and List Model Demo")

    Flickable {
        width: 800; height: 400
        contentWidth: rowLayoutId.width; contentHeight: rowLayoutId.height
        flickableDirection: Flickable.HorizontalFlick
        ScrollBar.horizontal: ScrollBar{}

        RowLayout{
            id:rowLayoutId
            implicitHeight: 380
            anchors.verticalCenter: parent.verticalCenter

            ListViewModelDelegateDemo{}

            InlineModelListViewDemo{}

            DecorationsHeaderFooterHighlightsDemo{}

            DecorationsSectionsDemo{}

            RepeaterDemo{}

            Rectangle{
                width: 260
                height: 360
                border.color: "black"
                radius: 5


            }
        }
    }






}

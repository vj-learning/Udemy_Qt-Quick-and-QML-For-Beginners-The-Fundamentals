import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5

    Column{
        spacing: 10
        width: parent.width

        Label{
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "TextArea is multi-line Text editor"
        }

        TextArea{
            width: parent.width
            height: 40
            color: "red"
            wrapMode: TextArea.Wrap
            text: "TextArea is not scrollable by itself. Especially on screen-size constrained platforms, it is often preferable to make entire application pages scrollable. On such a scrollable page, a non-scrollable TextArea might behave better than nested scrollable controls. Notice, however, that in such a scenario, the background decoration of the TextArea scrolls together with the rest of the scrollable content."
        }

    }
}

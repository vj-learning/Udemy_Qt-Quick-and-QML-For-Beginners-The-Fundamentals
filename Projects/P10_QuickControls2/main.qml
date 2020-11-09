import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

Window {
    width: 800
    height: 480
    visible: true
    title: qsTr("Qt Quick Controls 2")

    ColumnLayout{
        BusyIndicator{
            id:mainBusyIndicatorId
            running: true
            visible: true
            Layout.alignment: Qt.AlignCenter
        }

        GridLayout{

            columns: 5

            ButtonDemo{}

            CheckBoxDemo{}

            DelayButtonDemo{}

            DialDemo{}

            ComboBoxDemo{}

            FrameDemo{}

            GroupBoxDemo{}

            SwipeViewAndPageIndicatorDemo{}

            ProgressBarDemo{}

            RangeSliderDemo{}

            FlickableScrollBarDemo{}

            SliderDemo{}

            SwitchDemo{}

            PageSwipeViewAndTabBar{}

            TextAreaDemo{}

            TextFieldDemo{}

            SplitViewDemo{}

            SpinBoxDemo{}

            DrawerDemo{}

            Component.onCompleted: {
                mainBusyIndicatorId.running=false
                mainBusyIndicatorId.visible=false
            }
        }
    }
}

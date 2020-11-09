import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle{
    width: 150; height: 100
    color: "yellow"
    border.color: "black"
    border.width: 5


    Column{
        width: parent.width
        spacing: -8

        Switch{
            text: "WiFi"
            checked: true
        }

        Switch{
            text: "Bluetooth"

            onCheckedChanged: {
                console.log("Bluetooth is "+(checked==true?"turn on.":"turn off."))
            }
        }

        Switch{
            text: "Mobile"
        }

        Switch{
            text: "Flight Mode"
        }
    }
}

import QtQuick 2.12

Item {
    Column{
        Row{
            Text{
                id:firstNameLableId
                text: "First Name:"
                rightPadding: 5
            }

            TextInput{
                id:firstNameId
                text: "Vijay"
                color: "indigo"
                font.capitalization: Font.AllUppercase ; font.bold: true
                font.family: Qt.font("arial")
                maximumLength: 15

                onFocusChanged: {
                   !firstNameId.focus &&  console.log("Current First Name is "+firstNameId.text)
                }

                onEditingFinished: {
                    console.log("After Editing First Name is "+firstNameId.text)
                }
            }
        }

        Row{
            Text{
                id:lastNameLableId
                text: "Last Name:"
                rightPadding: 5
            }

            TextInput{
                id:lastNameId
                text: "Gawade"
                color: "indigo"
                font.capitalization: Font.AllUppercase ; font.bold: true
                font.family: Qt.font("arial")
                maximumLength: 15

                onFocusChanged: {
                   !lastNameId.focus &&  console.log("Last Name is "+lastNameId.text)
                }
            }
        }
    }
}

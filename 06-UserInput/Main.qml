import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Input")

    Row{
        x: 10
        y: 10
        spacing: 10

        Rectangle{
            id: firstNameRecId
            color: 'dodgerblue'
            width: firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight + 20

            Text{
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "First Name: "
            }
        }

        Rectangle{
            id: firstNameTextRecId
            color: 'dodgerblue'
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20

            TextInput{
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your First Name"
                onEditingFinished: {
                    console.log('first name is '+  text)
                }
            }
        }
    }

    Row{
        x: 10
        y: 60
        spacing: 10

        Rectangle{
            id: lastNameRecId
            color: 'dodgerblue'
            width: lastNameLabelId.implicitWidth + 20
            height: lastNameLabelId.implicitHeight + 20

            Text{
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "Last Name: "
            }
        }

        Rectangle{
            id: lastNameTextRecId
            color: 'dodgerblue'
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20

            TextInput{
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your Last Name"
                onEditingFinished: {
                    console.log('Last name is '+  text)
                }
            }
        }
    }

}

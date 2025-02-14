import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Labeled Text Input")

    ColumnLayout{
        spacing: 50
        Layout.topMargin: 10

        LabeledTextInput{
            id: firstNameId
            label: 'First Name'
            placeHolderText: 'Type in your First Name: '
            onEditingFinish: {
                console.log('First name change to ' + text)
            }
        }

        LabeledTextInput{
            id: lastNameId
            label: 'Last Name'
            placeHolderText: 'Type in your Last Name: '
            onEditingFinish: {
                console.log('Last name change to ' + text)
            }
        }
    }

}

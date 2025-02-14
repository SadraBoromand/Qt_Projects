import QtQuick

Item {
    property alias text: textInputId.text
    property alias label: labelId.text
    property alias placeHolderText: placeHoderId.text

    signal editingFinish


    Row{
        spacing: 10

        Rectangle{
            id: labelRecId
            width: labelId.implicitWidth + 20
            height: labelId.implicitHeight + 20
            color: 'dodgerblue'

            Text {
                id: labelId
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: textInputRecId
            color: 'dodgerblue'
            width: placeHoderId.implicitWidth + textInputId.implicitWidth + 20
            height: placeHoderId.implicitHeight + 20

            Text {
                id: placeHoderId
                anchors.centerIn: parent
                verticalAlignment: TextInput.AlignVCenter
                visible: !textInputId.text && !textInputId.inputMethodComposing
            }

            TextInput{
                id: textInputId
                anchors.centerIn: parent
                focus: true
                verticalAlignment: TextInput.AlignVCenter
            }
        }
    }


    Component.onCompleted: {
        textInputId.editingFinished.connect(editingFinish)
    }
}

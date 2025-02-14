import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Edit Text")

    Rectangle{
        width: textEditId.width
        height: textEditId.implicitHeight + 10
        border{
            width: 1
            color: 'black'
        }
        radius: 5

        TextEdit {
            id: textEditId
            width: 240
            text: "<b>Hello</b> <i>World!</i>"
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true
            wrapMode: TextEdit.Wrap
            textFormat: TextEdit.RichText

            onEditingFinished: {
                console.log('The current text is ' + text)
            }
        }
    }

}

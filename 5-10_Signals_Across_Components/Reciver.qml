import QtQuick

Item {
    property alias rectColor: reciverRecID.color

    width: reciverRecID.width
    height: reciverRecID.height

    function reciverInfo(count){
        displayTextId.text = count
    }

    Rectangle{
        id: reciverRecID
        width: 200
        height: width
        color: 'red'

        Text {
            id: displayTextId
            text: '0'
            anchors.centerIn: parent
            font.pointSize: 20

        }

    }

}

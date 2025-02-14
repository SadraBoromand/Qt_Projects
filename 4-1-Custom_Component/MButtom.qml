import QtQuick

Item{
    id: rootId
    property alias buttonText: buttomTextId.text
    width: containerRectId.width
    height: containerRectId.height
    signal buttomClicked

    Rectangle{
        id: containerRectId
        width: buttomTextId.implicitWidth + 50
        height: buttomTextId.implicitHeight + 20
        color: 'red'
        border{
            width: 3
            color: 'blue'
        }

        Text {
            id: buttomTextId
            text: qsTr("Buttom")
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                // console.log('Clicked buttom')
                rootId.buttomClicked()
            }
        }

    }

}

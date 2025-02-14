import QtQuick

Item {
    property alias rectColor: notifierRecID.color

    width: notifierRecID.width
    height: notifierRecID.height

    property int count: 0

    required property Reciver target
    onTargetChanged: {
        notify.connect(target.reciverInfo)
    }

    signal notify(string count)

    Rectangle{
        id: notifierRecID
        width: 200
        height: width
        color: 'red'

        Text {
            id: displayTextId
            text: count
            anchors.centerIn: parent
            font.pointSize: 20

        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++;
                notify(count)
            }
        }
    }

}

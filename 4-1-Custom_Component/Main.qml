import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("1 - Custom Components")


    /*Row {
        spacing: 2

        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }*/

    // building a custom buttom
    /* Rectangle{
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
                console.log('Clicked buttom')
            }
        }

    }*/

    Column{
        spacing: 10
        MButtom{
            id: buttom1Id
            buttonText: "Buttom 1"
            onButtomClicked: {
                console.log('Clicked buttom1')
            }
        }
        MButtom{
            id: buttom12d
            buttonText: "buttom2"
            onButtomClicked: {
                console.log('Clicked buttom2')
            }
        }
    }
}

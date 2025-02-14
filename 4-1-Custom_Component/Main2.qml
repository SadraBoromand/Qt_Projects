import QtQuick

Window{
    width: 640
    height: 480
    title: qsTr("Custom Components in Place")
    visible: true

    // method1 main with Loader
    /*
    Row{
        spacing: 20

        Loader{
            id: firstButton
            sourceComponent: buttonComponent

            onLoaded: {
                var customButtom = firstButton.item

                customButtom.buttonText = 'Button1'
                customButtom.buttonClicked.connect(function(){
                    console.log('Clicked button1')
                })
            }
        }
    }


    // method1
    Component{
        id: buttonComponent
        Item{
            id: rootId
            property alias buttonText: buttomTextId.text
            width: containerRectId.width
            height: containerRectId.height
            signal buttonClicked

            Rectangle{
                id: containerRectId
                width: buttomTextId.implicitWidth + 50
                height: buttomTextId.implicitHeight + 20
                color: 'red'
                Behavior on color {
                         NumberAnimation {
                             target: containerRectId
                             property: "width"
                             to: (rect.width + 20)
                             duration: 0
                         }
                     }
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
                        rootId.buttonClicked()
                    }
                }

            }

        }

    }
    */


    // method 2
    component MButton2: Rectangle{
        id: mButtonId
        property alias buttonText: buttomTextId.text
        width: buttomTextId.implicitWidth + 50
        height: buttomTextId.implicitHeight + 20
        color: 'red'
        signal buttomClicked

        Behavior on color {
            NumberAnimation {
                target: mButtonId
                property: "width"
                to: (rect.width + 20)
                duration: 0
            }
        }
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
                mButtonId.buttomClicked()
            }
        }

    }

    Column{
        spacing: 10
        MButton2{
            id: buttom1Id
            buttonText: "Buttom 1"
            onButtomClicked: {
                console.log('Clicked buttom1')
            }
        }
        MButton2{
            id: buttom12d
            buttonText: "buttom2"
            onButtomClicked: {
                console.log('Clicked buttom2')
            }
        }
    }
}



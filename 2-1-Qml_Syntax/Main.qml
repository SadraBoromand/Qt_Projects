import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string textShow: "Hello Sadra"

    Row{
        spacing: 20
        anchors.centerIn: parent
        Rectangle{
            id: redRecId
            width: 100
            height: 100
            color: 'red'
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // telling mouse area fill Rectangle

                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: (mouse)=> {
                               console.log("Clicked Rectangle red")

                               textId.text = "red"

                               // if (mouse.button === Qt.RightButton)
                               // parent.color = 'blue';
                               // else
                               // parent.color = 'red';
                           }

            }
        }
        Rectangle{
            id: blueRecId
            width: 100
            height: 100
            color: 'blue'
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // telling mouse area fill Rectangle

                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: (mouse)=> {
                               console.log("Clicked Rectangle blue")

                               textShow = "blue"
                               // if (mouse.button === Qt.RightButton)
                               // parent.color = 'green';
                               // else
                               // parent.color = 'red';
                           }

            }
        }
        Rectangle{
            id: greenRecId
            width: 100
            height: 100
            color: 'green'
            border.color: "black"
            border.width: 5
            radius: 15
            MouseArea{
                anchors.fill: parent // telling mouse area fill Rectangle

                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: (mouse)=> {
                               console.log("Clicked Rectangle green")

                               textShow = "green"
                               // if (mouse.button === Qt.RightButton)
                               // parent.color = 'blue';
                               // else
                               // parent.color = 'red';
                           }

            }
        }

        Rectangle{
            id: circleId
            width: 100
            height: 100
            color: 'dodgerblue'
            border.color: "black"
            border.width: 5
            radius: 50

            Text {
                id: textId
                anchors.centerIn: parent
                text: textShow
            }

            MouseArea{
                anchors.fill: parent // telling mouse area fill Rectangle

                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: (mouse)=> {
                               console.log("Clicked Rectangle")

                               textShow = 'broken'
                               // if (mouse.button === Qt.RightButton)
                               // parent.color = 'blue';
                               // else
                               // parent.color = 'red';
                           }

            }
        }

    }

}

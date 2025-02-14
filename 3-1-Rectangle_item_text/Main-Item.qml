import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Basic Element")


    Item {
        id: containerItemId
        width: 400
        height: 200
        x: 50
        y: 50


        Rectangle{
            anchors.fill: parent
            color: 'dodgerblue'

            // Grouped property #1
            /*border.width: 5
            border.color: 'black'
            */

            // Grouped property #2
            /*border{
                color: 'black'
                width: 5
            }*/

            // Grouped property #3
            border.color: 'black'; border.width: 5
        }


        Rectangle{
            x: 0
            y: 10
            width: 50
            height: 50
            color: 'red'
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 60
            y: 10
            width: 50
            height: 50
            color: 'green'
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 120
            y: 10
            width: 50
            height: 50
            color: 'blue'
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            id: mTextId
            text: qsTr("Hello world")
            color: 'black'
            x: 100
            y: 100

            font{
                family: 'Helvetica'
                pointSize: 13
                bold: true
            }
        }
    }














}

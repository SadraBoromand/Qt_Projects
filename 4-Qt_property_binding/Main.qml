import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property binding Demo")


    Rectangle{
        id: redRecId
        width: 50
        // height: 50
        height: width * 1.5 // property binding
        color: 'red'
    }

    Rectangle{
        id: blueRecId
        width: 100
        height: 100
        color: 'blue'
        // x: 50
        anchors.bottom: parent.bottom

        MouseArea{
            anchors.fill: parent
            onClicked: {
                redRecId.width = redRecId.width + 10
            }
        }
    }

    Rectangle{
        id: greenRecId
        width: 100
        height: 100
        color: 'green'
        anchors.bottom: parent.bottom
        anchors.left: blueRecId.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                // redRecId.height = 100 // change dynamic property to staic
                // redRecId.height = redRecId.width * 2.5
                // Qt.quit()
                redRecId.height = Qt.binding(function(){
                    return redRecId.width * 2.5
                })
            }
        }
    }















}

import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loading Images through Qt6 Cmake")

    Item {
        id: containerId
        width: 600
        height: 300
        anchors.centerIn: parent

        Rectangle{
            color: 'gray'
            anchors.fill: parent
        }

        Image {
            x: 50
            y: 50
            width: 100
            height: 100
            // for way one
            // source: "qrc:/images/LearnQt.png"

            // for way two
            source: 'images/LearnQt.png'
        }

    }
}

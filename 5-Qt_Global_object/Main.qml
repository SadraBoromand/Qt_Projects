import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global object")

    property var fonts: Qt.fontFamilies()

    Text {
        id: txt
        text: Qt.md5("hello world")
        color: Qt.rgba(1.0,0,1)
        anchors.centerIn: parent
        font.pointSize: 20
    }

    Rectangle{
        id: clickedRec
        width: 300
        height: 100
        // anchors.bottom: parent.bottom
        anchors.bottom: parent.bottom
        color: 'dodgerblue'

        MouseArea{
            anchors.fill: parent
            onClicked: {
                // Qt.quit()

                // show fonts
                for(var i=0;i<fonts.length; i++){
                    console.log('['+i+']' + fonts[i])
                }

                var mName='sadra'
                var mNameHash = Qt.md5(mName)
                console.log('my name hashed is ', mNameHash)


                // Qt.openUrlExternally('https://learnqt.guide')
                // Qt.openUrlExternally('file:///D:/stive jobs.jpg')

                console.log('my os ', Qt.platform.os)


            }
        }
    }















}


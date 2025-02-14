import QtQuick

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Attached_signal_handler")


    Rectangle{
        id: recId
        width: 200
        height: 200
        color: 'green'
    }

    Component.onCompleted: {
        console.log('starting ...')
    }

    Component.onDestruction: {
        console.log('finishing...')
    }
}

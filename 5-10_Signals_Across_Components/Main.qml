import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Sending_Signals_Across_Components_5_10")

    Notifier{
        id: notifierId
        rectColor: 'yellowgreen'
        /*onNotify:count=> {
            console.log('Recivied: '+ count)
        }*/
        target: reciverId
    }

    Reciver{
        id: reciverId
        rectColor: 'dodgerblue'
        anchors.right: parent.right
    }

    // connection signals
    // Component.onCompleted: {
    //     notifierId.notify.connect(reciverId.reciverInfo)
    // }
















}

import QtQuick

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Connecting_a_signal_to_a_signal_5_9")


    Rectangle{
        id: recId
        width: 300
        height: 300
        color: 'dodgerblue'

        signal greet(string message)
        signal forward_greet(string message)


        function respond_your_way(message){
            console.log('Custom respond : '+ message)
        }
    }


    MouseArea{
        anchors.fill: parent
        onClicked: {
            recId.greet('The sky is blue')
        }
    }


    Component.onCompleted: {
        recId.greet.connect(recId.forward_greet)
        recId.forward_greet.connect(recId.respond_your_way)
    }
}

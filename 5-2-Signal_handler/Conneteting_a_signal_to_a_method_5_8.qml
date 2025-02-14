import QtQuick

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Conneteting_a_signal_to_a_method_5_8")


    Rectangle{
        id: recId
        width: 300
        height: 300
        color: 'dodgerblue'

        signal greet(string message)


        function respond_your_way(message){
            console.log('Custom respond : '+ message)
        }

    }


    MouseArea{
        anchors.fill: parent
        onClicked: {
            recId.greet('the sky is blue')
        }
    }

    Component.onCompleted: {
        recId.greet.connect(recId.respond_your_way)
    }

}

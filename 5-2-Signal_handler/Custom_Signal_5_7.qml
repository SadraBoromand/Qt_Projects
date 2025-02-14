import QtQuick

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("5_7_Custom_Signal")

    Rectangle{
        id: recId
        width: 200
        height: 200
        color: 'dodgerblue'

        signal greet(string message)

        onGreet: message=>{
                   console.log(message)
               }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered : {
                recId.greet('Custom signal - yohoooo')
            }
        }

    }

}

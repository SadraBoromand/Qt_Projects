import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("5-11 Multiple signal parameters")

    signal info(string last_name, string first_name, string age)

    onInfo:(l,f,a) =>{
               console.log('last_name:'+l+', first_name: '+f+', age:'+ a)
           }

    Rectangle{
        id: rectId
        color: 'blue'
        width: 300
        height: width

        MouseArea{
            anchors.fill: parent
            onClicked: {
                info("Snow", 'John', 33)
            }
        }
    }
}

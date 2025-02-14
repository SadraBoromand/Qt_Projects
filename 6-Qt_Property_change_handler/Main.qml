import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Property change Handler")


    property string name: 'sadra'
    property int age: 25
    onNameChanged: {
        console.log('Name ', name)
    }

    onAgeChanged: {
        console.log('age changed - ', age)
    }
    onTitleChanged: {
        console.log('title changed - ', title)
    }


    Rectangle{
        width: 300
        height: 100
        color: 'greenyellow'
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.name = 'Mohammad Sadra'
                rootId.age = 20
                rootId.title = 'New title'
            }
        }
    }




    Component.onCompleted: {
        console.log('Before any change - name', name)
    }




}

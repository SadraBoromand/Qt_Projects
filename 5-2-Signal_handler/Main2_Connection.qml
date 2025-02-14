import QtQuick

Window {
    width: 600
    height: 400
    title: '5-5 Connection'
    visible: true


    Rectangle{
        id: recId
        width: 200
        height: 200
        color: 'dodgerblue'

        MouseArea{
            id: mouseAreaId
            anchors.fill: parent

        }
    }

    Connections{
        target: mouseAreaId
        function onClicked(){
            console.log('clicked on mosue area')
        }

        function onDoubleClicked(mouse){
            console.log('Doubleclicked on mosue ' + mouse.x)
        }
    }
}

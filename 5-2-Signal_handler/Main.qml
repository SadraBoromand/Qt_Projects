import QtQuick

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Signal Handler")

    property string txt: "text1"



    Rectangle{
        id: recId
        width: mText.implicitWidth + 20
        height: 150
        color: 'red'

        Text {
            id: mText
            text: qsTr(txt)
            anchors.centerIn: parent
            color: 'white'
            font{
                // pointSize: 30
            }
        }

        MouseArea{
            // hoverEnabled: true
            anchors.fill: parent
            /*
            onClicked: {
                console.log('clicked on rectangle')
            }

            onDoubleClicked: {
                console.log('double clicked on rec')
            }

            onEntered: {
                console.log('you are in!')
            }

            onExited: {
                console.log('you are out!')
            }

            onWheel: function(wheel){
                console.log('wheel is '+ wheel.x)
            }

            onReleased: mouse=>{
                console.log('Released at x:' + mouse.x + ', y: '+ mouse.y )
            }

            onPressAndHold: mosue=>{
                console.log('was held: '+mosue.wasHeld)
            }*/

            onPositionChanged: mosue=>{
               console.log('position is '+ mosue.x + ' '+ mosue.y);
               var pos = (mosue.x + '-'+ mosue.y).toString()
               console.log(typeof pos)
               txt = pos
           }
        }
    }
}

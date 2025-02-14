import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Mouse Area")

    Rectangle{
        id:  containerRec
        width: parent.width
        height: 200
        color:'beige'

        Rectangle{
            id: movingRecId
            width: 50
            height: width
            color: 'blue'

        }

        MouseArea{
            anchors.fill: containerRec
            onClicked: mouse=>{
                           console.log(mouse.x)
                           movingRecId.x = mouse.x
                           movingRecId.y = mouse.y
                       }

            onWheel: wheel=>{
                         console.log('weel x = '+wheel.x+
                                     ', and weel y = '+wheel.y+
                                     ' and angleData = '+ wheel.angleDalta)
                     }

            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse){
                    containerRec.color = 'red'
                }else{
                    containerRec.color = 'green'
                }
            }
        }
    }

    Rectangle{
        id:  dragContainerRecId
        width: parent.width
        height: 200
        color:'beige'
        y: 250

        Rectangle{
            id: draggableRec
            width: 50
            height: width
            color: 'blue'

            onXChanged: {
                console.log('The x position is '+ x)
            }
        }

        MouseArea{
            anchors.fill: parent
            drag.target: draggableRec
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: dragContainerRecId.width - draggableRec.width
        }

    }
}

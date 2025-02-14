import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Data Types Demo")

    property string mString: "https://learnqt.guide"
    property int mInt: 45
    property bool isFemale: false
    property double mDouble: 77.5
    property url mUrl: "https://learnqt.guide"


    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var afont: Qt.font({family:'Consolas', pointSize:30, bold:true, italic:true})
    property date mDate: "2018-07-19"

    Rectangle{
        width: 200
        height: 200 + mInt
        anchors.centerIn: parent
        color: 'orange'

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: qsTr(mString,color='red')
            // font.bold: isFemale ? true : false
            font: afont
        }
    }


    Component.onCompleted:  {
        console.log("App is running!")
        print('the mString is',mString)

        if(isFemale){
            print('You may wear a dress')
        }else{
            print('You may wear a suit')
        }

        print('mDouble is ', mDouble)

        if(mString == mUrl){
            console.log('They are same')
        }else
            console.log('They are NOT the same')


        console.log("---------------------")
        console.log('Rec is', aRect.x, aRect.y, aRect.width, aRect.height)

        /*anArray.forEach((value,index)=>{
                            if(index == 5){
                                console.log(value())
                            }else console.log(value)
                        })*/

        for(var i=0;i<anArray.length; i++){
            if(i==5)
                console.log(anArray[i]())
            else
                console.log(anArray[i])
        }

        console.log('Date is ', mDate)
    }
}

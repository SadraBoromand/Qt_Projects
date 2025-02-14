import QtQuick

Window
{
    width: 640
    height: 480
    title: qsTr("3-3-Image")
    visible: true

    Item{
        id: containerItemId
        width: 600
        height: 300
        x: 150
        y: 50

        Image{
            x: 10
            y: 50
            width: 100
            height: 100
            // load from work dir
            source: 'file:LearnQt.png'
        }

        Image{
            x: 150
            y: 50
            width: 100
            height: 100
            // load from resource file
            source: 'qrc:/images/LearnQt.png'
        }


        Image{
            x: 300
            y: 50
            width: 100
            height: 100
            // load from resource file
            source: 'file:///D:/Learn/Qt with C++/Udemy - Qt6 QML For Beginners The Fundamentals 2024-5/Qt6QMLForBeginnersVideo-main/3.BasicElements/2-Image/images/LearnQt.png'
        }


        Image{
            x: 450
            y: 50
            width: 100
            height: 100
            // load from resource file
            source: 'https://www.learnqt.guide/assets/blog/image/LearnQt.png'
        }

    }








}

import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Row{
       id:tools
       Button{
           id:click
           text: "Click"
           onClicked: {
            console.log("asdasd")
           }
       }
    }
    PinchArea{
        id:pinc
        anchors.top:tools.bottom
        width: 500
        height: 500
        anchors.fill: parent


        Rectangle{
            id:rec1
            width: 160
            height: 100
            radius: 5
            color:"#000"
            opacity: 0.7

        }

        MouseArea{
            id:area
            anchors.fill: parent

            onPressed: {
                console.log(mouseX,mouseY)

            }
            onPositionChanged: {
                cursorShape:Qt.OpenHandCursor
                console.log(mouseX,mouseY)
                rec1.x = mouseX-rec1.width/2
                rec1.y = mouseY-rec1.height/2
            }

        }

    }

}

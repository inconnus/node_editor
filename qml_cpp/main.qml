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
        anchors.fill: parent
        width: parent.width
        height: parent.height

        scale: 0.1




        MouseArea{
            id:area
            anchors.fill: parent
            onWheel: {
                if(wheel.angleDelta.y>0)
                    pinc.scale-=0.01
                else if(wheel.angleDelta.y<0)
                    pinc.scale+=0.01
                console.log(wheel.angleDelta.y)
            }

            onClicked: {
                if(mouse.button & Qt.RightButton) {
                   console.log('asdasd')
                }
            }

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
        Rectangle{
            id:rec1
            width: 160
            height: 100
            radius: 5
            color:"#000"
            opacity: 0.7

        }

    }

}

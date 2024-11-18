import Felgo
import QtQuick
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
        id:laywin
        title: "Task_for_layout"
        width: 300
        height: 700
        visible: true
        property int myMargin:5
        ColumnLayout{
            id:col1
            spacing:myMargin
            anchors.fill:parent
            RowLayout{
                id:header
                Layout.fillWidth: true
                Layout.preferredHeight:1
                Layout.minimumHeight:100
                Rectangle{
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"gainsboro"
                    Text{
                        id:headertext
                        text:"Header"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
            }
            GridLayout{
                id:content
                Layout.fillWidth: true
                Layout.preferredHeight:6
                Layout.minimumHeight:400
                Rectangle{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    border.color:"gainsboro"
                    border.width:5
                    Text{
                        id:contenttext
                        text:"Content"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
            }


            RowLayout{
                id:footer
                Layout.preferredHeight:1
                Layout.fillWidth: true
                spacing:myMargin
                Layout.minimumHeight:100
                Rectangle{
                    id:btn1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"1"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            btn1.opacity=1.0
                            btn2.opacity=0.5
                            btn3.opacity=0.5
                            headertext.text="Header 1"
                            contenttext.text="Iten 1 content"
                        }
                    }
                }
                Rectangle{
                    id:btn2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"2"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            btn2.opacity=1.0
                            btn1.opacity=0.5
                            btn3.opacity=0.5
                            headertext.text="Header 2"
                            contenttext.text="Iten 2 content"
                        }
                    }
                }
                }
                Rectangle{
                    id:btn3
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"3"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            btn3.opacity=1.0
                            btn2.opacity=0.5
                            btn1.opacity=0.5
                            headertext.text="Header 3"
                            contenttext.text="Iten 3 content"
                        }
                    }
                }

                }
            }
        }
    }
}

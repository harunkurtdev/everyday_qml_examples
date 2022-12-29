import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import io.qt.Backend_QML 1.0

ApplicationWindow {
    visible: true
    width: 600
    minimumWidth: 600
    maximumWidth: 600
    height: 350
    minimumHeight: 350
    maximumHeight: 350
    title: "cpp backend_qml"
    

    Backend_QML {
        id: backend_qml_id
        onStrToSendChanged: {
            textField2.visible = true
            textField2.text = strToSend;
        }
    }
    TextField {
        id: textField2
        visible: false
        placeholderText: qsTr("")
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 1 / 3

    }

    TextField {
        id: textField1
        placeholderText: qsTr("Enter text here !")
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 1 / 2


    }

//    Text {
//        id: someTxt
//        anchors.horizontalCenter: parent.horizontalCenter
//        y: parent.height * 1 / 3
//        font.pointSize: 36
//        text: "veri yaz"
//    }

    Button {
        id: btn
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 2 / 3
        text: "write data"
        onClicked: {
           backend_qml_id.getText(textField1.text);
        }
    }

//    Connections {
//        target: backend_qml_id
//        onQml2cpp: {
//            console.log(qml_value);
//        }
//    }
}

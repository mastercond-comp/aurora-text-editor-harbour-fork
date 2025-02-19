import QtQuick 2.6
import Sailfish.Silica 1.0
import "../components"

Page {
    id: aboutPage

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            spacing: Theme.paddingLarge
            width: parent.width

            PageHeader {
                title: qsTr("About")
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                width: Theme.iconSizeExtraLarge
                height: Theme.iconSizeExtraLarge
                source: "/usr/share/icons/hicolor/256x256/apps/harbour-editor.png"
            }

            Label {
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                text: qsTr("Version") + " " + Qt.application.version
            }


            Button {
                text: qsTr("Source code")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    Qt.openUrlExternally("https://github.com/mastercond-comp/aurora-text-editor-harbour-fork");
                }
            }

            Text {
                id: titleLabel
                anchors { horizontalCenter: parent.horizontalCenter }
                width: parent.width
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
                font { family: Theme.fontFamily; pixelSize: Theme.fontSizeSmall }
                color: Theme.highlightColor
                text: "<style>a:link { color: " + Theme.highlightColor + "; }</style><br/>" +
                      qsTr("\"Harbour-Editor\" is feature-rich text/code editor!") +
                      "<br/>" +
                      qsTr("License: GPLv3") +
                      "<br/>" +
                      "<br/>" +
                      "<br/>" +
                      qsTr("Special thanks:") +
                      "<br/>" + "<br/>" + "<br/>" + qsTr("-eekkelund for save/load/autosave functions, source code and some dictionaries for syntax highlighting and feedback") +
                      "<br/>" + qsTr("-osanwe for very often consultations about qml code") +
                      "<br/>" + qsTr("-coderus for various tips and code") +
                      "<br/>" + qsTr("-Russian community for feedback and help") +
                      "<br/>" + qsTr("-Ancelad for tab icon, testing and help") +
                      "<br/>" + qsTr("-gri4994 for the wonderful app icon") +
                      "<br/>" + qsTr("-bobsik for the contributions for version 0.9") +
                      "<br/>" + qsTr("-the team of GtkSourceView for the basis for .sh dictionary") +
                      "<br/>" +
                      "<br/>" +
                      qsTr("Tips:")+
                      "<br/>" + "<br/>" + "<br/>" +
                      qsTr("-To 'Select all text' hold your finger until 3 vibrations") +
                      "<br/>" +
                      qsTr("-Unsaved changes are saved in the file with ending '~' in the same dir where you placed your original file") +
                      "<br/>" +
                      qsTr("-You can copy the file path to the clipboard by selecting appropriate MenuItem in pulley menu");

                onLinkActivated: {
                    Qt.openUrlExternally("https://github.com/mastercond-comp/aurora-text-editor-harbour-fork");
                }
            }


            SectionHeader { text: qsTr("Translators") }

            AuthorRow {
                author: "GoAlexander, Stephan Ponomarenko"
                myText: qsTr(" - Russian translation"+ "<br/>" +  "<br/>");
            }



            VerticalScrollDecorator {}
        }

    }
}

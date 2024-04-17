# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'LoginMenu.ui'
#
# Created by: PyQt5 UI code generator 5.15.9
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_loginWindow(object):
    def setupUi(self, loginWindow):
        loginWindow.setObjectName("loginWindow")
        loginWindow.resize(1242, 856)
        loginWindow.setMinimumSize(QtCore.QSize(1200, 830))
        self.centralwidget = QtWidgets.QWidget(loginWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.label_picture = QtWidgets.QLabel(self.centralwidget)
        self.label_picture.setGeometry(QtCore.QRect(170, 100, 541, 641))
        self.label_picture.setStyleSheet("border-image: url(:/icons/icons/GPT_login_pic_daylight.webp);\n"
"border-top-left-radius:30;\n"
"border-bottom-left-radius:30px;")
        self.label_picture.setText("")
        self.label_picture.setObjectName("label_picture")
        self.label_input_layer = QtWidgets.QLabel(self.centralwidget)
        self.label_input_layer.setGeometry(QtCore.QRect(710, 100, 401, 641))
        self.label_input_layer.setStyleSheet("background-color: rgb(255, 255, 255);\n"
"border-top-right-radius:30;\n"
"border-bottom-right-radius:30px;\n"
"")
        self.label_input_layer.setText("")
        self.label_input_layer.setObjectName("label_input_layer")
        self.label_introduce = QtWidgets.QLabel(self.centralwidget)
        self.label_introduce.setGeometry(QtCore.QRect(750, 160, 301, 111))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(15)
        font.setBold(True)
        font.setItalic(True)
        font.setWeight(75)
        self.label_introduce.setFont(font)
        self.label_introduce.setObjectName("label_introduce")
        self.lineEdit_username = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_username.setGeometry(QtCore.QRect(750, 270, 311, 61))
        self.lineEdit_username.setStyleSheet("border:none;\n"
"border-bottom:2px solid rgb(0,0,0);")
        self.lineEdit_username.setObjectName("lineEdit_username")
        self.lineEdit_password = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_password.setGeometry(QtCore.QRect(750, 350, 311, 61))
        self.lineEdit_password.setStyleSheet("border:none;\n"
"border-bottom:2px solid rgb(0,0,0);")
        self.lineEdit_password.setEchoMode(QtWidgets.QLineEdit.Password)
        self.lineEdit_password.setObjectName("lineEdit_password")
        self.checkBox = QtWidgets.QCheckBox(self.centralwidget)
        self.checkBox.setGeometry(QtCore.QRect(750, 440, 131, 31))
        font = QtGui.QFont()
        font.setFamily("Arial Rounded MT Bold")
        font.setPointSize(9)
        font.setBold(False)
        font.setItalic(False)
        font.setUnderline(False)
        font.setWeight(50)
        font.setKerning(True)
        self.checkBox.setFont(font)
        self.checkBox.setObjectName("checkBox")
        self.frame = QtWidgets.QFrame(self.centralwidget)
        self.frame.setGeometry(QtCore.QRect(970, 110, 121, 51))
        self.frame.setStyleSheet("QPushButton{\n"
"    border:none;\n"
"}\n"
"QPushButton:hover{\n"
"    padding-bottom:5px;\n"
"}")
        self.frame.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.frame.setFrameShadow(QtWidgets.QFrame.Raised)
        self.frame.setObjectName("frame")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.frame)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.pushButton = QtWidgets.QPushButton(self.frame)
        self.pushButton.setText("")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/icons/icons/small.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.pushButton.setIcon(icon)
        self.pushButton.setObjectName("pushButton")
        self.horizontalLayout.addWidget(self.pushButton)
        self.pushButton_2 = QtWidgets.QPushButton(self.frame)
        self.pushButton_2.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/icons/icons/quit.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.pushButton_2.setIcon(icon1)
        self.pushButton_2.setObjectName("pushButton_2")
        self.horizontalLayout.addWidget(self.pushButton_2)
        self.pushButton_login = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_login.setGeometry(QtCore.QRect(750, 500, 311, 51))
        font = QtGui.QFont()
        font.setFamily("Arial Rounded MT Bold")
        font.setPointSize(11)
        self.pushButton_login.setFont(font)
        self.pushButton_login.setStyleSheet("QPushButton{\n"
"    background-color: rgb(0, 0, 0);\n"
"\n"
"    color: rgb(255, 255, 255);\n"
"\n"
"    border:2px solid rgb(0, 0, 0);\n"
"\n"
"    border-radius:10px;\n"
"}\n"
"\n"
"QPushButton:pressed{\n"
"    padding-top:5pax;\n"
"    padding-left:5pax;\n"
"}")
        self.pushButton_login.setObjectName("pushButton_login")
        self.pushButton_login_2 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_login_2.setGeometry(QtCore.QRect(750, 570, 311, 51))
        font = QtGui.QFont()
        font.setFamily("Arial Rounded MT Bold")
        font.setPointSize(11)
        self.pushButton_login_2.setFont(font)
        self.pushButton_login_2.setStyleSheet("QPushButton{\n"
"    background-color: rgb(0, 0, 0);\n"
"\n"
"    color: rgb(255, 255, 255);\n"
"\n"
"    border:2px solid rgb(0, 0, 0);\n"
"\n"
"    border-radius:10px;\n"
"}\n"
"\n"
"QPushButton:pressed{\n"
"    padding-top:5pax;\n"
"    padding-left:5pax;\n"
"}")
        self.pushButton_login_2.setObjectName("pushButton_login_2")
        self.label_input_layer.raise_()
        self.label_introduce.raise_()
        self.lineEdit_username.raise_()
        self.lineEdit_password.raise_()
        self.pushButton.raise_()
        self.pushButton_2.raise_()
        self.checkBox.raise_()
        self.label_picture.raise_()
        self.frame.raise_()
        self.pushButton_login.raise_()
        self.pushButton_login_2.raise_()
        loginWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(loginWindow)
        self.pushButton_2.clicked.connect(loginWindow.close) # type: ignore
        self.pushButton.clicked.connect(loginWindow.showMinimized) # type: ignore
        QtCore.QMetaObject.connectSlotsByName(loginWindow)

    def retranslateUi(self, loginWindow):
        _translate = QtCore.QCoreApplication.translate
        loginWindow.setWindowTitle(_translate("loginWindow", "MainWindow"))
        self.label_introduce.setText(_translate("loginWindow", "find your dream home today"))
        self.lineEdit_username.setPlaceholderText(_translate("loginWindow", "Username"))
        self.lineEdit_password.setPlaceholderText(_translate("loginWindow", "Password"))
        self.checkBox.setText(_translate("loginWindow", "Remember me"))
        self.pushButton_login.setText(_translate("loginWindow", "login"))
        self.pushButton_login_2.setText(_translate("loginWindow", "register"))
import res_rc
# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'BuyerMenu.ui'
#
# Created by: PyQt5 UI code generator 5.15.9
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_BuyerMenu(object):
    def setupUi(self, BuyerMenu):
        BuyerMenu.setObjectName("BuyerMenu")
        BuyerMenu.resize(1172, 763)
        BuyerMenu.setStyleSheet("background-color: rgb(245, 250, 254);")
        self.centralwidget = QtWidgets.QWidget(BuyerMenu)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.gridLayout.setObjectName("gridLayout")
        self.icon_name_widget_2 = QtWidgets.QWidget(self.centralwidget)
        self.icon_name_widget_2.setStyleSheet("QWidget{\n"
"    \n"
"    background-color: rgb(37, 150, 190);\n"
"}\n"
"\n"
"QPushButton{\n"
"    color:white;\n"
"    height:30px;\n"
"    border:none;\n"
"    font: 10pt \"PT Root UI\";\n"
"    border-radius:10px\n"
"}\n"
"\n"
"QPushButton:checked{\n"
"    background-color:#f5fafe;\n"
"    color:#1f95ef;\n"
"    font-weight:bold\n"
"    \n"
"}")
        self.icon_name_widget_2.setObjectName("icon_name_widget_2")
        self.verticalLayout_3 = QtWidgets.QVBoxLayout(self.icon_name_widget_2)
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.label_4 = QtWidgets.QLabel(self.icon_name_widget_2)
        self.label_4.setText("")
        self.label_4.setPixmap(QtGui.QPixmap(":/white/icons/white/home.svg"))
        self.label_4.setObjectName("label_4")
        self.horizontalLayout_3.addWidget(self.label_4)
        self.verticalLayout_3.addLayout(self.horizontalLayout_3)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setContentsMargins(-1, 15, -1, -1)
        self.verticalLayout.setSpacing(15)
        self.verticalLayout.setObjectName("verticalLayout")
        self.btn_dashboard1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_dashboard1.setText("")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/dashboard_white.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/dashboard.png"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_dashboard1.setIcon(icon)
        self.btn_dashboard1.setCheckable(True)
        self.btn_dashboard1.setAutoExclusive(True)
        self.btn_dashboard1.setObjectName("btn_dashboard1")
        self.verticalLayout.addWidget(self.btn_dashboard1)
        self.btn_properties1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_properties1.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/white/icons/white/search.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon1.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/iconizer-search.svg"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_properties1.setIcon(icon1)
        self.btn_properties1.setCheckable(True)
        self.btn_properties1.setAutoExclusive(True)
        self.btn_properties1.setObjectName("btn_properties1")
        self.verticalLayout.addWidget(self.btn_properties1)
        self.btn_profile1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_profile1.setText("")
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/profile_white.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon2.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/profile.png"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_profile1.setIcon(icon2)
        self.btn_profile1.setCheckable(True)
        self.btn_profile1.setAutoExclusive(True)
        self.btn_profile1.setObjectName("btn_profile1")
        self.verticalLayout.addWidget(self.btn_profile1)
        self.btn_favorites1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_favorites1.setText("")
        icon3 = QtGui.QIcon()
        icon3.addPixmap(QtGui.QPixmap(":/white/icons/white/heart.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon3.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/iconizer-heart.svg"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_favorites1.setIcon(icon3)
        self.btn_favorites1.setCheckable(True)
        self.btn_favorites1.setAutoExclusive(True)
        self.btn_favorites1.setObjectName("btn_favorites1")
        self.verticalLayout.addWidget(self.btn_favorites1)
        self.btn_messages1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_messages1.setText("")
        icon4 = QtGui.QIcon()
        icon4.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/messages_white.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon4.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/messages.png"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_messages1.setIcon(icon4)
        self.btn_messages1.setCheckable(True)
        self.btn_messages1.setAutoExclusive(True)
        self.btn_messages1.setObjectName("btn_messages1")
        self.verticalLayout.addWidget(self.btn_messages1)
        self.verticalLayout_3.addLayout(self.verticalLayout)
        spacerItem = QtWidgets.QSpacerItem(20, 246, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_3.addItem(spacerItem)
        self.btn_signout1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_signout1.setText("")
        icon5 = QtGui.QIcon()
        icon5.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/log_out_white.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon5.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/log_out.png"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_signout1.setIcon(icon5)
        self.btn_signout1.setCheckable(True)
        self.btn_signout1.setObjectName("btn_signout1")
        self.verticalLayout_3.addWidget(self.btn_signout1)
        self.gridLayout.addWidget(self.icon_name_widget_2, 0, 0, 1, 1)
        self.icon_name_widget = QtWidgets.QWidget(self.centralwidget)
        self.icon_name_widget.setStyleSheet("QWidget{\n"
"    background-color: rgb(37, 150, 190);\n"
"    color:white;\n"
"}\n"
"\n"
"QPushButton{\n"
"    color:white;\n"
"    text-align:left;\n"
"    height:30px;\n"
"    font: 10pt \"PT Root UI\";\n"
"    border:none;\n"
"    padding-left:10px;\n"
"    border-top-left-radius:10px;\n"
"    border-bottom-left-radius:10px;\n"
"}\n"
"\n"
"QPushButton:checked{\n"
"    background-color:#f5fafe;\n"
"    color:#1f95ef;\n"
"    font-weight:bold\n"
"\n"
"}")
        self.icon_name_widget.setObjectName("icon_name_widget")
        self.verticalLayout_4 = QtWidgets.QVBoxLayout(self.icon_name_widget)
        self.verticalLayout_4.setContentsMargins(-1, -1, 0, -1)
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setContentsMargins(-1, -1, 15, -1)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.label_2 = QtWidgets.QLabel(self.icon_name_widget)
        self.label_2.setText("")
        self.label_2.setPixmap(QtGui.QPixmap(":/white/icons/white/home.svg"))
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_2.addWidget(self.label_2)
        self.label_3 = QtWidgets.QLabel(self.icon_name_widget)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(14)
        font.setBold(False)
        font.setItalic(False)
        font.setWeight(9)
        self.label_3.setFont(font)
        self.label_3.setStyleSheet("font: 75 14pt \"PT Root UI Bold\";")
        self.label_3.setObjectName("label_3")
        self.horizontalLayout_2.addWidget(self.label_3)
        self.verticalLayout_4.addLayout(self.horizontalLayout_2)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setContentsMargins(-1, 15, -1, -1)
        self.verticalLayout_2.setSpacing(15)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.btn_dashboard2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_dashboard2.setIcon(icon)
        self.btn_dashboard2.setCheckable(True)
        self.btn_dashboard2.setAutoExclusive(True)
        self.btn_dashboard2.setObjectName("btn_dashboard2")
        self.verticalLayout_2.addWidget(self.btn_dashboard2)
        self.btn_properties2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_properties2.setIcon(icon1)
        self.btn_properties2.setCheckable(True)
        self.btn_properties2.setAutoExclusive(True)
        self.btn_properties2.setObjectName("btn_properties2")
        self.verticalLayout_2.addWidget(self.btn_properties2)
        self.btn_profile2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_profile2.setIcon(icon2)
        self.btn_profile2.setCheckable(True)
        self.btn_profile2.setAutoExclusive(True)
        self.btn_profile2.setObjectName("btn_profile2")
        self.verticalLayout_2.addWidget(self.btn_profile2)
        self.btn_favorites2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_favorites2.setIcon(icon3)
        self.btn_favorites2.setCheckable(True)
        self.btn_favorites2.setAutoExclusive(True)
        self.btn_favorites2.setObjectName("btn_favorites2")
        self.verticalLayout_2.addWidget(self.btn_favorites2)
        self.btn_messages2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_messages2.setIcon(icon4)
        self.btn_messages2.setCheckable(True)
        self.btn_messages2.setAutoExclusive(True)
        self.btn_messages2.setObjectName("btn_messages2")
        self.verticalLayout_2.addWidget(self.btn_messages2)
        self.verticalLayout_4.addLayout(self.verticalLayout_2)
        spacerItem1 = QtWidgets.QSpacerItem(20, 246, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_4.addItem(spacerItem1)
        self.btn_signout2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_signout2.setIcon(icon5)
        self.btn_signout2.setCheckable(True)
        self.btn_signout2.setObjectName("btn_signout2")
        self.verticalLayout_4.addWidget(self.btn_signout2)
        self.gridLayout.addWidget(self.icon_name_widget, 0, 1, 1, 1)
        self.main_menu = QtWidgets.QWidget(self.centralwidget)
        self.main_menu.setObjectName("main_menu")
        self.verticalLayout_5 = QtWidgets.QVBoxLayout(self.main_menu)
        self.verticalLayout_5.setObjectName("verticalLayout_5")
        self.header_widget = QtWidgets.QWidget(self.main_menu)
        self.header_widget.setObjectName("header_widget")
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout(self.header_widget)
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.btn_nav_bar = QtWidgets.QPushButton(self.header_widget)
        self.btn_nav_bar.setStyleSheet("border:none;")
        self.btn_nav_bar.setText("")
        icon6 = QtGui.QIcon()
        icon6.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/menu.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_nav_bar.setIcon(icon6)
        self.btn_nav_bar.setCheckable(True)
        self.btn_nav_bar.setObjectName("btn_nav_bar")
        self.horizontalLayout_4.addWidget(self.btn_nav_bar)
        spacerItem2 = QtWidgets.QSpacerItem(140, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem2)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setSpacing(7)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.LineEdit = LineEdit(self.header_widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.LineEdit.sizePolicy().hasHeightForWidth())
        self.LineEdit.setSizePolicy(sizePolicy)
        self.LineEdit.setObjectName("LineEdit")
        self.horizontalLayout.addWidget(self.LineEdit)
        self.btn_search = QtWidgets.QPushButton(self.header_widget)
        self.btn_search.setStyleSheet("border:none")
        self.btn_search.setText("")
        icon7 = QtGui.QIcon()
        icon7.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/search.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_search.setIcon(icon7)
        self.btn_search.setObjectName("btn_search")
        self.horizontalLayout.addWidget(self.btn_search)
        self.horizontalLayout_4.addLayout(self.horizontalLayout)
        spacerItem3 = QtWidgets.QSpacerItem(162, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem3)
        self.btn_user = QtWidgets.QPushButton(self.header_widget)
        self.btn_user.setStyleSheet("border:none;")
        self.btn_user.setText("")
        icon8 = QtGui.QIcon()
        icon8.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/image.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_user.setIcon(icon8)
        self.btn_user.setObjectName("btn_user")
        self.horizontalLayout_4.addWidget(self.btn_user)
        self.verticalLayout_5.addWidget(self.header_widget)
        self.SlideAniStackedWidget = SlideAniStackedWidget(self.main_menu)
        self.SlideAniStackedWidget.setStyleSheet("background-color: rgb(255, 255, 255);")
        self.SlideAniStackedWidget.setObjectName("SlideAniStackedWidget")
        self.page_dashborad = QtWidgets.QWidget()
        self.page_dashborad.setObjectName("page_dashborad")
        self.TitleLabel = TitleLabel(self.page_dashborad)
        self.TitleLabel.setGeometry(QtCore.QRect(130, 70, 261, 101))
        self.TitleLabel.setObjectName("TitleLabel")
        self.SlideAniStackedWidget.addWidget(self.page_dashborad)
        self.page_properties = QtWidgets.QWidget()
        self.page_properties.setObjectName("page_properties")
        self.TableWidget1 = TableWidget(self.page_properties)
        self.TableWidget1.setGeometry(QtCore.QRect(30, 190, 791, 471))
        self.TableWidget1.setStyleSheet("QTableView {\n"
"    background: transparent;\n"
"    outline: none;\n"
"    border: none;\n"
"    /* font: 13px \'Segoe UI\', \'Microsoft YaHei\'; */\n"
"    selection-background-color: transparent;\n"
"    alternate-background-color: transparent;\n"
"}\n"
"\n"
"QTableView[isBorderVisible=true] {\n"
"    border: 1px solid rgba(0, 0, 0, 15);\n"
"}\n"
"\n"
"QTableView::item {\n"
"    background: transparent;\n"
"    border: 0px;\n"
"    padding-left: 16px;\n"
"    padding-right: 16px;\n"
"    height: 35px;\n"
"}\n"
"\n"
"\n"
"QTableView::indicator {\n"
"    width: 18px;\n"
"    height: 18px;\n"
"    border-radius: 5px;\n"
"    border: none;\n"
"    background-color: transparent;\n"
"}\n"
"\n"
"\n"
"QHeaderView {\n"
"    background-color: transparent;\n"
"}\n"
"\n"
"QHeaderView::section {\n"
"    background-color:  rgb(37, 150, 190);\n"
"    color: black;\n"
"    padding-left: 5px;\n"
"    padding-right: 5px;\n"
"    border: 1px solid rgba(0, 0, 0, 15);\n"
"    font: 17px \'Segoe UI\', \'Microsoft YaHei\', \'PingFang SC\';\n"
"}\n"
"\n"
"QHeaderView::section:horizontal {\n"
"    border-left: none;\n"
"    height: 33px;\n"
"}\n"
"\n"
"QTableView[isBorderVisible=true] QHeaderView::section:horizontal {\n"
"    border-top: none;\n"
"}\n"
"\n"
"QHeaderView::section:horizontal:last {\n"
"    border-right: none;\n"
"}\n"
"\n"
"QHeaderView::section:vertical {\n"
"    border-top: none;\n"
"}\n"
"\n"
"QHeaderView::section:checked {\n"
"    background-color: transparent;\n"
"}\n"
"\n"
"QHeaderView::down-arrow {\n"
"    subcontrol-origin: padding;\n"
"    subcontrol-position: center right;\n"
"    margin-right: 6px;\n"
"    image: url(:/qfluentwidgets/images/table_view/Down_black.svg);\n"
"}\n"
"\n"
"QHeaderView::up-arrow {\n"
"    subcontrol-origin: padding;\n"
"    subcontrol-position: center right;\n"
"    margin-right: 6px;\n"
"    image: url(:/qfluentwidgets/images/table_view/Up_black.svg);\n"
"}\n"
"\n"
"QTableCornerButton::section {\n"
"    background-color: transparent;\n"
"    border: 1px solid rgba(0, 0, 0, 15);\n"
"}\n"
"\n"
"QTableCornerButton::section:pressed {\n"
"    background-color: rgba(0, 0, 0, 12);\n"
"}")
        self.TableWidget1.setObjectName("TableWidget1")
        self.TableWidget1.setColumnCount(5)
        self.TableWidget1.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.TableWidget1.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.TableWidget1.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.TableWidget1.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.TableWidget1.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.TableWidget1.setHorizontalHeaderItem(4, item)
        self.SlideAniStackedWidget.addWidget(self.page_properties)
        self.page_profile = QtWidgets.QWidget()
        self.page_profile.setObjectName("page_profile")
        self.TitleLabel_3 = TitleLabel(self.page_profile)
        self.TitleLabel_3.setGeometry(QtCore.QRect(250, 170, 123, 38))
        self.TitleLabel_3.setObjectName("TitleLabel_3")
        self.SlideAniStackedWidget.addWidget(self.page_profile)
        self.page_favorites = QtWidgets.QWidget()
        self.page_favorites.setObjectName("page_favorites")
        self.TitleLabel_4 = TitleLabel(self.page_favorites)
        self.TitleLabel_4.setGeometry(QtCore.QRect(270, 140, 123, 38))
        self.TitleLabel_4.setObjectName("TitleLabel_4")
        self.SlideAniStackedWidget.addWidget(self.page_favorites)
        self.page_messages = QtWidgets.QWidget()
        self.page_messages.setObjectName("page_messages")
        self.TitleLabel_5 = TitleLabel(self.page_messages)
        self.TitleLabel_5.setGeometry(QtCore.QRect(240, 190, 123, 38))
        self.TitleLabel_5.setObjectName("TitleLabel_5")
        self.SlideAniStackedWidget.addWidget(self.page_messages)
        self.verticalLayout_5.addWidget(self.SlideAniStackedWidget)
        self.gridLayout.addWidget(self.main_menu, 0, 2, 1, 1)
        BuyerMenu.setCentralWidget(self.centralwidget)

        self.retranslateUi(BuyerMenu)
        self.SlideAniStackedWidget.setCurrentIndex(1)
        self.btn_messages1.toggled['bool'].connect(self.btn_messages2.setChecked) # type: ignore
        self.btn_favorites1.toggled['bool'].connect(self.btn_favorites2.setChecked) # type: ignore
        self.btn_profile1.toggled['bool'].connect(self.btn_profile2.setChecked) # type: ignore
        self.btn_properties1.toggled['bool'].connect(self.btn_properties2.setChecked) # type: ignore
        self.btn_dashboard1.toggled['bool'].connect(self.btn_dashboard2.setChecked) # type: ignore
        self.btn_dashboard2.toggled['bool'].connect(self.btn_dashboard1.setChecked) # type: ignore
        self.btn_properties2.toggled['bool'].connect(self.btn_properties1.setChecked) # type: ignore
        self.btn_profile2.toggled['bool'].connect(self.btn_profile1.setChecked) # type: ignore
        self.btn_favorites2.toggled['bool'].connect(self.btn_favorites1.setChecked) # type: ignore
        self.btn_messages2.toggled['bool'].connect(self.btn_messages1.setChecked) # type: ignore
        self.btn_nav_bar.toggled['bool'].connect(self.icon_name_widget_2.setHidden) # type: ignore
        self.btn_nav_bar.toggled['bool'].connect(self.icon_name_widget.setVisible) # type: ignore
        self.btn_signout1.toggled['bool'].connect(BuyerMenu.close) # type: ignore
        self.btn_signout2.toggled['bool'].connect(BuyerMenu.close) # type: ignore
        QtCore.QMetaObject.connectSlotsByName(BuyerMenu)

    def retranslateUi(self, BuyerMenu):
        _translate = QtCore.QCoreApplication.translate
        BuyerMenu.setWindowTitle(_translate("BuyerMenu", "MainWindow"))
        self.label_3.setText(_translate("BuyerMenu", "Real Estate"))
        self.btn_dashboard2.setText(_translate("BuyerMenu", "dashboard"))
        self.btn_properties2.setText(_translate("BuyerMenu", "Properties"))
        self.btn_profile2.setText(_translate("BuyerMenu", "Profile"))
        self.btn_favorites2.setText(_translate("BuyerMenu", "Favorites"))
        self.btn_messages2.setText(_translate("BuyerMenu", "Messages"))
        self.btn_signout2.setText(_translate("BuyerMenu", "Sign out"))
        self.TitleLabel.setText(_translate("BuyerMenu", "Dashboard"))
        item = self.TableWidget1.horizontalHeaderItem(0)
        item.setText(_translate("BuyerMenu", "username"))
        item = self.TableWidget1.horizontalHeaderItem(1)
        item.setText(_translate("BuyerMenu", "email"))
        item = self.TableWidget1.horizontalHeaderItem(2)
        item.setText(_translate("BuyerMenu", "password"))
        item = self.TableWidget1.horizontalHeaderItem(3)
        item.setText(_translate("BuyerMenu", "type"))
        item = self.TableWidget1.horizontalHeaderItem(4)
        item.setText(_translate("BuyerMenu", "status"))
        self.TitleLabel_3.setText(_translate("BuyerMenu", "Profile"))
        self.TitleLabel_4.setText(_translate("BuyerMenu", "Favorites"))
        self.TitleLabel_5.setText(_translate("BuyerMenu", "Messages"))
from qfluentwidgets import LineEdit, TableWidget, TitleLabel
from qfluentwidgetspro import SlideAniStackedWidget
import res_rc

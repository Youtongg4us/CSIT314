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
        BuyerMenu.resize(1200, 776)
        BuyerMenu.setMinimumSize(QtCore.QSize(1200, 400))
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
        self.btn_property = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_property.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/white/icons/white/search.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon1.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/iconizer-search.svg"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_property.setIcon(icon1)
        self.btn_property.setCheckable(True)
        self.btn_property.setAutoExclusive(True)
        self.btn_property.setObjectName("btn_property")
        self.verticalLayout.addWidget(self.btn_property)
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
        self.verticalLayout_3.addLayout(self.verticalLayout)
        spacerItem = QtWidgets.QSpacerItem(20, 246, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_3.addItem(spacerItem)
        self.btn_signout1 = QtWidgets.QPushButton(self.icon_name_widget_2)
        self.btn_signout1.setText("")
        icon4 = QtGui.QIcon()
        icon4.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/log_out_white.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        icon4.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/log_out.png"), QtGui.QIcon.Normal, QtGui.QIcon.On)
        self.btn_signout1.setIcon(icon4)
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
        self.btn_property2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_property2.setIcon(icon1)
        self.btn_property2.setCheckable(True)
        self.btn_property2.setAutoExclusive(True)
        self.btn_property2.setObjectName("btn_property2")
        self.verticalLayout_2.addWidget(self.btn_property2)
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
        self.verticalLayout_4.addLayout(self.verticalLayout_2)
        spacerItem1 = QtWidgets.QSpacerItem(20, 246, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_4.addItem(spacerItem1)
        self.btn_signout2 = QtWidgets.QPushButton(self.icon_name_widget)
        self.btn_signout2.setIcon(icon4)
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
        icon5 = QtGui.QIcon()
        icon5.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/menu.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_nav_bar.setIcon(icon5)
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
        icon6 = QtGui.QIcon()
        icon6.addPixmap(QtGui.QPixmap(":/icons2/icons/icon2/search.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_search.setIcon(icon6)
        self.btn_search.setObjectName("btn_search")
        self.horizontalLayout.addWidget(self.btn_search)
        self.horizontalLayout_4.addLayout(self.horizontalLayout)
        spacerItem3 = QtWidgets.QSpacerItem(162, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem3)
        self.btn_logout = QtWidgets.QPushButton(self.header_widget)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(10)
        self.btn_logout.setFont(font)
        self.btn_logout.setStyleSheet("border:none;")
        icon7 = QtGui.QIcon()
        icon7.addPixmap(QtGui.QPixmap(":/blue/icons/blue/log-out.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.btn_logout.setIcon(icon7)
        self.btn_logout.setObjectName("btn_logout")
        self.horizontalLayout_4.addWidget(self.btn_logout)
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
        self.page_manage = QtWidgets.QWidget()
        self.page_manage.setObjectName("page_manage")
        self.verticalLayout_8 = QtWidgets.QVBoxLayout(self.page_manage)
        self.verticalLayout_8.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_8.setObjectName("verticalLayout_8")
        self.verticalLayout_7 = QtWidgets.QVBoxLayout()
        self.verticalLayout_7.setObjectName("verticalLayout_7")
        self.label = QtWidgets.QLabel(self.page_manage)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(20)
        font.setItalic(False)
        font.setUnderline(False)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.verticalLayout_7.addWidget(self.label)
        self.label_5 = QtWidgets.QLabel(self.page_manage)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(10)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_5.setFont(font)
        self.label_5.setObjectName("label_5")
        self.verticalLayout_7.addWidget(self.label_5)
        self.verticalLayout_8.addLayout(self.verticalLayout_7)
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.btn_feedback = FilledPushButton(self.page_manage)
        self.btn_feedback.setObjectName("btn_feedback")
        self.horizontalLayout_5.addWidget(self.btn_feedback)
        self.SearchLineEdit = SearchLineEdit(self.page_manage)
        self.SearchLineEdit.setText("")
        self.SearchLineEdit.setObjectName("SearchLineEdit")
        self.horizontalLayout_5.addWidget(self.SearchLineEdit)
        self.verticalLayout_8.addLayout(self.horizontalLayout_5)
        self.SmoothScrollArea = SmoothScrollArea(self.page_manage)
        self.SmoothScrollArea.setWidgetResizable(True)
        self.SmoothScrollArea.setObjectName("SmoothScrollArea")
        self.scrollAreaWidgetContents = QtWidgets.QWidget()
        self.scrollAreaWidgetContents.setGeometry(QtCore.QRect(0, 0, 839, 544))
        self.scrollAreaWidgetContents.setObjectName("scrollAreaWidgetContents")
        self.SmoothScrollArea.setWidget(self.scrollAreaWidgetContents)
        self.verticalLayout_8.addWidget(self.SmoothScrollArea)
        self.SlideAniStackedWidget.addWidget(self.page_manage)
        self.page_rating = QtWidgets.QWidget()
        self.page_rating.setObjectName("page_rating")
        self.verticalLayout_6 = QtWidgets.QVBoxLayout(self.page_rating)
        self.verticalLayout_6.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_6.setObjectName("verticalLayout_6")
        self.label_6 = QtWidgets.QLabel(self.page_rating)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(20)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_6.setFont(font)
        self.label_6.setObjectName("label_6")
        self.verticalLayout_6.addWidget(self.label_6)
        self.LargeTitleLabel = LargeTitleLabel(self.page_rating)
        self.LargeTitleLabel.setObjectName("LargeTitleLabel")
        self.verticalLayout_6.addWidget(self.LargeTitleLabel)
        self.horizontalLayout_8 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_8.setObjectName("horizontalLayout_8")
        self.SubtitleLabel = SubtitleLabel(self.page_rating)
        self.SubtitleLabel.setObjectName("SubtitleLabel")
        self.horizontalLayout_8.addWidget(self.SubtitleLabel)
        self.Label_username = SubtitleLabel(self.page_rating)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(11)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Label_username.sizePolicy().hasHeightForWidth())
        self.Label_username.setSizePolicy(sizePolicy)
        self.Label_username.setObjectName("Label_username")
        self.horizontalLayout_8.addWidget(self.Label_username)
        self.verticalLayout_6.addLayout(self.horizontalLayout_8)
        self.horizontalLayout_10 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_10.setObjectName("horizontalLayout_10")
        self.SubtitleLabel_3 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_3.setObjectName("SubtitleLabel_3")
        self.horizontalLayout_10.addWidget(self.SubtitleLabel_3)
        self.Label_password = SubtitleLabel(self.page_rating)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Label_password.sizePolicy().hasHeightForWidth())
        self.Label_password.setSizePolicy(sizePolicy)
        self.Label_password.setObjectName("Label_password")
        self.horizontalLayout_10.addWidget(self.Label_password)
        self.verticalLayout_6.addLayout(self.horizontalLayout_10)
        self.horizontalLayout_9 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_9.setObjectName("horizontalLayout_9")
        self.SubtitleLabel_2 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_2.setObjectName("SubtitleLabel_2")
        self.horizontalLayout_9.addWidget(self.SubtitleLabel_2)
        self.Label_email = SubtitleLabel(self.page_rating)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Label_email.sizePolicy().hasHeightForWidth())
        self.Label_email.setSizePolicy(sizePolicy)
        self.Label_email.setObjectName("Label_email")
        self.horizontalLayout_9.addWidget(self.Label_email)
        self.verticalLayout_6.addLayout(self.horizontalLayout_9)
        self.horizontalLayout_11 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_11.setObjectName("horizontalLayout_11")
        self.SubtitleLabel_7 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_7.setObjectName("SubtitleLabel_7")
        self.horizontalLayout_11.addWidget(self.SubtitleLabel_7)
        self.Label_status = SubtitleLabel(self.page_rating)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Label_status.sizePolicy().hasHeightForWidth())
        self.Label_status.setSizePolicy(sizePolicy)
        self.Label_status.setObjectName("Label_status")
        self.horizontalLayout_11.addWidget(self.Label_status)
        self.verticalLayout_6.addLayout(self.horizontalLayout_11)
        self.LargeTitleLabel_2 = LargeTitleLabel(self.page_rating)
        self.LargeTitleLabel_2.setObjectName("LargeTitleLabel_2")
        self.verticalLayout_6.addWidget(self.LargeTitleLabel_2)
        self.horizontalLayout_12 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_12.setObjectName("horizontalLayout_12")
        self.SubtitleLabel_4 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_4.setObjectName("SubtitleLabel_4")
        self.horizontalLayout_12.addWidget(self.SubtitleLabel_4)
        self.LineEdit_newUserName = LineEdit(self.page_rating)
        self.LineEdit_newUserName.setObjectName("LineEdit_newUserName")
        self.horizontalLayout_12.addWidget(self.LineEdit_newUserName)
        self.verticalLayout_6.addLayout(self.horizontalLayout_12)
        self.horizontalLayout_13 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_13.setObjectName("horizontalLayout_13")
        self.SubtitleLabel_5 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_5.setObjectName("SubtitleLabel_5")
        self.horizontalLayout_13.addWidget(self.SubtitleLabel_5)
        self.LineEdit_newPassword = PasswordLineEdit(self.page_rating)
        self.LineEdit_newPassword.setObjectName("LineEdit_newPassword")
        self.horizontalLayout_13.addWidget(self.LineEdit_newPassword)
        self.verticalLayout_6.addLayout(self.horizontalLayout_13)
        self.horizontalLayout_14 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_14.setObjectName("horizontalLayout_14")
        self.SubtitleLabel_6 = SubtitleLabel(self.page_rating)
        self.SubtitleLabel_6.setObjectName("SubtitleLabel_6")
        self.horizontalLayout_14.addWidget(self.SubtitleLabel_6)
        self.LineEdit_newEmail = LineEdit(self.page_rating)
        self.LineEdit_newEmail.setObjectName("LineEdit_newEmail")
        self.horizontalLayout_14.addWidget(self.LineEdit_newEmail)
        self.verticalLayout_6.addLayout(self.horizontalLayout_14)
        self.btn_update_profile = PrimaryPushButton(self.page_rating)
        self.btn_update_profile.setObjectName("btn_update_profile")
        self.verticalLayout_6.addWidget(self.btn_update_profile)
        spacerItem4 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_6.addItem(spacerItem4)
        self.SlideAniStackedWidget.addWidget(self.page_rating)
        self.page_newFav = QtWidgets.QWidget()
        self.page_newFav.setObjectName("page_newFav")
        self.verticalLayout_11 = QtWidgets.QVBoxLayout(self.page_newFav)
        self.verticalLayout_11.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_11.setObjectName("verticalLayout_11")
        self.verticalLayout_10 = QtWidgets.QVBoxLayout()
        self.verticalLayout_10.setObjectName("verticalLayout_10")
        self.label_8 = QtWidgets.QLabel(self.page_newFav)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(20)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_8.setFont(font)
        self.label_8.setObjectName("label_8")
        self.verticalLayout_10.addWidget(self.label_8)
        self.label_9 = QtWidgets.QLabel(self.page_newFav)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(10)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_9.setFont(font)
        self.label_9.setObjectName("label_9")
        self.verticalLayout_10.addWidget(self.label_9)
        self.verticalLayout_11.addLayout(self.verticalLayout_10)
        self.horizontalLayout_6 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.btn_switch_to_old = FilledPushButton(self.page_newFav)
        self.btn_switch_to_old.setObjectName("btn_switch_to_old")
        self.horizontalLayout_6.addWidget(self.btn_switch_to_old)
        self.SearchLineEdit_new = SearchLineEdit(self.page_newFav)
        self.SearchLineEdit_new.setText("")
        self.SearchLineEdit_new.setObjectName("SearchLineEdit_new")
        self.horizontalLayout_6.addWidget(self.SearchLineEdit_new)
        self.verticalLayout_11.addLayout(self.horizontalLayout_6)
        self.SmoothScrollArea_2 = SmoothScrollArea(self.page_newFav)
        self.SmoothScrollArea_2.setWidgetResizable(True)
        self.SmoothScrollArea_2.setObjectName("SmoothScrollArea_2")
        self.scrollAreaWidgetContents_2 = QtWidgets.QWidget()
        self.scrollAreaWidgetContents_2.setGeometry(QtCore.QRect(0, 0, 839, 544))
        self.scrollAreaWidgetContents_2.setObjectName("scrollAreaWidgetContents_2")
        self.SmoothScrollArea_2.setWidget(self.scrollAreaWidgetContents_2)
        self.verticalLayout_11.addWidget(self.SmoothScrollArea_2)
        self.SlideAniStackedWidget.addWidget(self.page_newFav)
        self.page_oldFav = QtWidgets.QWidget()
        self.page_oldFav.setObjectName("page_oldFav")
        self.verticalLayout_13 = QtWidgets.QVBoxLayout(self.page_oldFav)
        self.verticalLayout_13.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_13.setObjectName("verticalLayout_13")
        self.verticalLayout_12 = QtWidgets.QVBoxLayout()
        self.verticalLayout_12.setObjectName("verticalLayout_12")
        self.label_10 = QtWidgets.QLabel(self.page_oldFav)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(20)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_10.setFont(font)
        self.label_10.setObjectName("label_10")
        self.verticalLayout_12.addWidget(self.label_10)
        self.label_11 = QtWidgets.QLabel(self.page_oldFav)
        font = QtGui.QFont()
        font.setFamily("PT Root UI Bold")
        font.setPointSize(10)
        font.setItalic(False)
        font.setUnderline(False)
        self.label_11.setFont(font)
        self.label_11.setObjectName("label_11")
        self.verticalLayout_12.addWidget(self.label_11)
        self.verticalLayout_13.addLayout(self.verticalLayout_12)
        self.horizontalLayout_7 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_7.setObjectName("horizontalLayout_7")
        self.btn_switch_to_new = FilledPushButton(self.page_oldFav)
        self.btn_switch_to_new.setObjectName("btn_switch_to_new")
        self.horizontalLayout_7.addWidget(self.btn_switch_to_new)
        self.SearchLineEdit_old = SearchLineEdit(self.page_oldFav)
        self.SearchLineEdit_old.setText("")
        self.SearchLineEdit_old.setObjectName("SearchLineEdit_old")
        self.horizontalLayout_7.addWidget(self.SearchLineEdit_old)
        self.verticalLayout_13.addLayout(self.horizontalLayout_7)
        self.SmoothScrollArea_3 = SmoothScrollArea(self.page_oldFav)
        self.SmoothScrollArea_3.setWidgetResizable(True)
        self.SmoothScrollArea_3.setObjectName("SmoothScrollArea_3")
        self.scrollAreaWidgetContents_3 = QtWidgets.QWidget()
        self.scrollAreaWidgetContents_3.setGeometry(QtCore.QRect(0, 0, 839, 623))
        self.scrollAreaWidgetContents_3.setObjectName("scrollAreaWidgetContents_3")
        self.SmoothScrollArea_3.setWidget(self.scrollAreaWidgetContents_3)
        self.verticalLayout_13.addWidget(self.SmoothScrollArea_3)
        self.SlideAniStackedWidget.addWidget(self.page_oldFav)
        self.verticalLayout_5.addWidget(self.SlideAniStackedWidget)
        self.gridLayout.addWidget(self.main_menu, 0, 2, 1, 1)
        BuyerMenu.setCentralWidget(self.centralwidget)

        self.retranslateUi(BuyerMenu)
        self.SlideAniStackedWidget.setCurrentIndex(2)
        self.btn_favorites1.toggled['bool'].connect(self.btn_favorites2.setChecked) # type: ignore
        self.btn_profile1.toggled['bool'].connect(self.btn_profile2.setChecked) # type: ignore
        self.btn_property.toggled['bool'].connect(self.btn_property2.setChecked) # type: ignore
        self.btn_dashboard1.toggled['bool'].connect(self.btn_dashboard2.setChecked) # type: ignore
        self.btn_dashboard2.toggled['bool'].connect(self.btn_dashboard1.setChecked) # type: ignore
        self.btn_property2.toggled['bool'].connect(self.btn_property.setChecked) # type: ignore
        self.btn_profile2.toggled['bool'].connect(self.btn_profile1.setChecked) # type: ignore
        self.btn_favorites2.toggled['bool'].connect(self.btn_favorites1.setChecked) # type: ignore
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
        self.btn_property2.setText(_translate("BuyerMenu", "search property"))
        self.btn_profile2.setText(_translate("BuyerMenu", "my profile"))
        self.btn_favorites2.setText(_translate("BuyerMenu", "my favorite"))
        self.btn_signout2.setText(_translate("BuyerMenu", "Sign out"))
        self.btn_logout.setText(_translate("BuyerMenu", "log out"))
        self.TitleLabel.setText(_translate("BuyerMenu", "Dashboard"))
        self.label.setText(_translate("BuyerMenu", "Property info"))
        self.label_5.setText(_translate("BuyerMenu", "Welcome to property page"))
        self.btn_feedback.setText(_translate("BuyerMenu", "submit a feedback"))
        self.SearchLineEdit.setPlaceholderText(_translate("BuyerMenu", "search property title"))
        self.label_6.setText(_translate("BuyerMenu", "Profile info"))
        self.LargeTitleLabel.setText(_translate("BuyerMenu", "currently profile here"))
        self.SubtitleLabel.setText(_translate("BuyerMenu", "your username:"))
        self.Label_username.setText(_translate("BuyerMenu", "N/A"))
        self.SubtitleLabel_3.setText(_translate("BuyerMenu", "your password:"))
        self.Label_password.setText(_translate("BuyerMenu", "N/A"))
        self.SubtitleLabel_2.setText(_translate("BuyerMenu", "your Email:"))
        self.Label_email.setText(_translate("BuyerMenu", "N/A"))
        self.SubtitleLabel_7.setText(_translate("BuyerMenu", "your Status:"))
        self.Label_status.setText(_translate("BuyerMenu", "N/A"))
        self.LargeTitleLabel_2.setText(_translate("BuyerMenu", "update profile here"))
        self.SubtitleLabel_4.setText(_translate("BuyerMenu", "new username:"))
        self.SubtitleLabel_5.setText(_translate("BuyerMenu", "new password:"))
        self.SubtitleLabel_6.setText(_translate("BuyerMenu", "new Email:"))
        self.btn_update_profile.setText(_translate("BuyerMenu", "confirm update"))
        self.label_8.setText(_translate("BuyerMenu", "New Favorite properties"))
        self.label_9.setText(_translate("BuyerMenu", "view your favorites here"))
        self.btn_switch_to_old.setText(_translate("BuyerMenu", "switch to old favoraites"))
        self.SearchLineEdit_new.setPlaceholderText(_translate("BuyerMenu", "search property title"))
        self.label_10.setText(_translate("BuyerMenu", "Old Favorite properties"))
        self.label_11.setText(_translate("BuyerMenu", "view your favorites here"))
        self.btn_switch_to_new.setText(_translate("BuyerMenu", "switch to new favoraites"))
        self.SearchLineEdit_old.setPlaceholderText(_translate("BuyerMenu", "search proptery title"))
from qfluentwidgets import LargeTitleLabel, LineEdit, PasswordLineEdit, PrimaryPushButton, SearchLineEdit, SmoothScrollArea, SubtitleLabel, TitleLabel
from qfluentwidgetspro import FilledPushButton, SlideAniStackedWidget
import res_rc

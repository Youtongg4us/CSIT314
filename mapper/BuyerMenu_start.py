from boundary.Buyer.UI.BuyerMenu import *
from PyQt5.QtWidgets import QMainWindow, QMessageBox, QTableWidgetItem, QPushButton, \
    QWidget, QHBoxLayout

from controller.AdminControl import AdminControl


class BuyerMenu(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_BuyerMenu()
        self.ui.setupUi(self)

        self.displayUserList()

         #  隐藏window窗口
        self.setWindowFlag(QtCore.Qt.FramelessWindowHint)
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)
        self.show()


        #   给缩小化和正常化的导航栏里的每一个图标（button）绑定到stack weidget里对应的页面
        self.ui.btn_dashboard1.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(0))
        self.ui.btn_dashboard2.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(0))

        self.ui.btn_properties1.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(1))
        self.ui.btn_properties2.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(1))

        self.ui.btn_profile1.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(2))
        self.ui.btn_profile2.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(2))

        self.ui.btn_favorites1.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(3))
        self.ui.btn_favorites2.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(3))

        self.ui.btn_messages1.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(4))
        self.ui.btn_messages2.clicked.connect(lambda: self.ui.SlideAniStackedWidget.setCurrentIndex(4))

        # 开启窗口时默认隐藏缩小化的导航栏
        self.ui.icon_name_widget.setHidden(True)


        # 给user_info_table_widget里的动态添加的3种button（edit,freeze，activate)
        # 编辑button的显示名称
        # 绑定对应的触发function(editUser, freezeUser, activate)
        # 使用lambda默认参数捕获动态添加时当前的行号（重点注意：lambda checked）
        for i in range(self.ui.TableWidget1.rowCount()):
            btn_edit = QPushButton('Edit')
            btn_freeze = QPushButton('Freeze')
            btn_activate = QPushButton('activate')

            # 在 lambda 中创建一个新的作用域，通过默认参数捕获当前的行号
            btn_freeze.clicked.connect(lambda checked, row=i: self.editUser(row))
            btn_edit.clicked.connect(lambda checked, row=i: self.freezeUser(row))
            btn_activate.clicked.connect(lambda checked, row=i: self.activate(row))

    # GUI窗口拖动
    def mousePressEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton and self.isMaximized() == False:
            self.m_flag = True
            self.m_Position = event.globalPos() - self.pos()  # 获得鼠标相对窗口的位置
            event.accept()
            self.setCursor(QtGui.QCursor(QtCore.Qt.OpenHandCursor))  # 更改鼠标图标

    def mouseMoveEvent(self, mouse_event):
        if QtCore.Qt.LeftButton and self.m_flag:
            self.move(mouse_event.globalPos() - self.m_Position)   # 更改窗口位置
            mouse_event.accept()

    def mouseReleaseEvent(self, mouse_event):
        self.m_flag = False
        self.setCursor(QtGui.QCursor(QtCore.Qt.ArrowCursor))


    # function批量创建按钮
    def addButtonToTable(self, row, column, text, function):
        # 创建按钮
        button = QPushButton(text)
        button.clicked.connect(function)
        # 创建布局
        widget = QWidget()
        layout = QHBoxLayout(widget)
        layout.addWidget(button)
        layout.setAlignment(QtCore.Qt.AlignCenter)
        layout.setContentsMargins(0, 0, 0, 0)
        widget.setLayout(layout)
        # 在表格中设置小部件
        self.ui.TableWidget1.setCellWidget(row, column, widget)




    # function在表格窗口（user_manage_table_widget)中显示数据库中user的信息
    def displayUserList(self):
        admin_control = AdminControl()              # 实例化AdminControl()
        user_list = admin_control.viewAllUser()     # 调用AdminControl中的viewAllUser（）方法，获取用户信息，并添加到user_list

        self.ui.TableWidget1.clearContents()        # 清除 QTableWidget 中现有的内容，但保留表头
        self.ui.TableWidget1.setRowCount(len(user_list))        # 根据用户列表的长度，设置 QTableWidget 的行数
        self.ui.TableWidget1.setColumnCount(5)          # 设置 QTableWidget 的列数为5（用户名，密码，邮箱，用户类型，状态）

        # 设置 QTableWidget 的水平表头标签
        self.ui.TableWidget1.setHorizontalHeaderLabels(["Username", "Password", "Email", "User Type", "Status"])




        # 遍历用户信息列表，填充 QTableWidget 的每一行
        # 遍历单个用户信息的每一项，填充对应的单元格
        # 在指定行和列创建表格项 QTableWidgetItem，并设置其文本为用户信息数据

        for row_index, user_info in enumerate(user_list):
            for column_index, data in enumerate(user_info):
                self.ui.TableWidget1.setItem(row_index, column_index, QTableWidgetItem(str(data)))

        self.ui.TableWidget1.viewport().update()  # 要求 QTableWidget 的视图组件进行更新，以便显示最新的内容



        self.ui.TableWidget1.setColumnCount(8)  # 增加3列用于 edit，freeze，activate

        # 重新设置QTableWidget 的水平表头标签
        self.ui.TableWidget1.setHorizontalHeaderLabels(
            ["Username", "Password", "Email", "User Type", "Status", "Edit", "Freeze", "Activate"])

        admin_control = AdminControl()
        user_list = admin_control.viewAllUser()

        self.ui.TableWidget1.setRowCount(len(user_list))

        for row_index, user_info in enumerate(user_list):
            for column_index, data in enumerate(user_info):
                self.ui.TableWidget1.setItem(row_index, column_index, QTableWidgetItem(str(data)))

            # 添加编辑按钮
            self.addButtonToTable(row_index, 5, "Edit", lambda checked, row=row_index: self.editUser(row))
            # 添加冻结按钮
            self.addButtonToTable(row_index, 6, "Freeze", lambda checked, row=row_index: self.freezeUser(row))

            self.addButtonToTable(row_index, 7, "Activate", lambda checked, row=row_index: self.activateUser(row))




    def editUser(self, row):
        # 获取用户信息
        username = self.ui.TableWidget1.item(row, 0).text()
        # 执行编辑操作
        print(f"Edit user {username}")

    def freezeUser(self, row):
        # 获取用户信息
        username = self.ui.TableWidget1.item(row, 0).text()
        # 执行删除操作
        reply = QMessageBox.question(self, 'Success', f"Are you sure you want to freeze the user {username} ?",
                                     QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if reply == QMessageBox.Yes:
            admin_control = AdminControl()
            success = admin_control.freezeUser(username)
            if success:
                QMessageBox.information(self, 'Success', f" {username} has been frozen.")
                self.ui.TableWidget1.item(row, 4).setText('invalid')  # 更新状态
            else:
                QMessageBox.warning(self, 'Failed', f" {username} frozen filed.")

    def activateUser(self, row):
        # 获取用户信息
        username = self.ui.TableWidget1.item(row, 0).text()
        # 执行删除操作
        reply = QMessageBox.question(self, 'Confirm', f"Are you sure to activate {username} ?",
                                     QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if reply == QMessageBox.Yes:
            admin_control = AdminControl()
            success = admin_control.activateUser(username)
            if success:
                QMessageBox.information(self, 'Success', f" {username} has been activated.")
                self.ui.TableWidget1.item(row, 4).setText('valid')  # 更新状态
            else:
                QMessageBox.warning(self, 'Failed', f" {username} activated failed.")
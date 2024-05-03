from PyQt5.QtCore import pyqtSignal

from boundary.BuyerMenu_Dialog_calculation import *
import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox, QListWidgetItem, QTableWidgetItem, QPushButton, \
    QWidget, QHBoxLayout, QDialog

from controller.Buyer.calculateMonthlyPaymentControl import CalculateMonthlyPaymentControl


class DialogCalculation(QDialog):

    def __init__(self, price=None, parent=None):
        super(DialogCalculation, self).__init__(parent)
        self.ui = Ui_BuyerMenu_Dialog_calculation()
        self.ui.setupUi(self)

        self.ui.PushButton_calculate.clicked.connect(self.calculation)

        if price:
            self.ui.LineEdit_price.setText(str(price.get('price', '')))

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

    def calculation(self):
        # 收集对话框中的数据
        price = self.ui.LineEdit_price.text()
        down_payment_rate = self.ui.LineEdit_payment_rate.text()
        interest_rate = self.ui.LineEdit_interest_rate.text()
        loan_years = self.ui.LineEdit_loan_year.text()

        calculation_control = CalculateMonthlyPaymentControl()
        result = calculation_control.calculateMonthlyPayment(price, interest_rate, loan_years, down_payment_rate)
        result = str(result)
        self.ui.SubtitleLabel.setText(result)


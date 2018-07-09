#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "resistor.h"

MainWindow::MainWindow(QWidget *parent):
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::SetDividerText()
{
    //ui->rDivision->setText(QString::number(divider.divide()));
    QString str = QString("%1").arg(divider.divide(), 0, 'f', 4);
    ui->rDivision->setText(str);

}

void MainWindow::on_r1_textChanged(const QString &text)
{
    divider.r1 = text.toUInt();
    SetDividerText();
}

void MainWindow::on_r2_textChanged(const QString &text)
{
    divider.r2 = text.toUInt();
    SetDividerText();
}

void MainWindow::on_vccInput_textChanged(const QString &text)
{
    divider.vcc = text.toDouble();
    SetDividerText();
}

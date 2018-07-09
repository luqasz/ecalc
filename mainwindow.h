#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <resistor.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    void SetDividerText();
    ResistorDivider divider;
    ~MainWindow();

private slots:
    void on_r1_textChanged(const QString &text);

    void on_r2_textChanged(const QString &text);

    void on_vccInput_textChanged(const QString &text);

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H

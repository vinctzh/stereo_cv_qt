#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    Mat blank = Mat::zeros(360,960,CV_32FC1);
    QImage img = QImage((const unsigned char*)(blank.data),blank.cols,blank.rows,QImage::Format_RGB888);
    ui->doubleView->setPixmap(QPixmap::fromImage(img));
}

MainWindow::~MainWindow()
{
    delete ui;
}

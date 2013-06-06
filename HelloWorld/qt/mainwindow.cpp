#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <cocos2d.h>

// Qt
#include <QHBoxLayout>
#include <QDebug>
// Qt
#include "qt/CCEGLView_qt.h"
#include "qt/CCGLWidget.h"
#include "AppDelegate.h"


using namespace cocos2d;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    m_appDelegate(NULL)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::closeEvent(QCloseEvent *)
{
    cocos2d::CCDirector::sharedDirector()->end();
    qApp->quit();
}

void MainWindow::setCocosAppDelegate(AppDelegate *appDelegate)
{
    m_appDelegate = appDelegate;
}

void MainWindow::on_actionIPhone_3G_3Gs_320x480_triggered()
{
    m_appDelegate->restart();
}

void MainWindow::on_actionIPhone_4_640x960_triggered()
{
    m_appDelegate->restart();
}

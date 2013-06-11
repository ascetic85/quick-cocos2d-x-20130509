#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <cocos2d.h>

// Qt
#include <QHBoxLayout>
#include <QDebug>
#include <QTimer>
#include <QGLWidget>
#include <QLabel>
#include <QVBoxLayout>
#include "AppDelegate.h"


using namespace cocos2d;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    m_appDelegate(NULL)
  , m_glWidget(NULL)
{
    ui->setupUi(this);

    QTimer::singleShot(3*1000, this, SLOT(inter()));
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

void MainWindow::setGLView(QWidget *glWidget)
{
    m_glWidget = glWidget;
}

void MainWindow::on_actionIPhone_3G_3Gs_320x480_triggered()
{
}

void MainWindow::on_actionIPhone_4_640x960_triggered()
{
}

void MainWindow::inter()
{
    if (m_glWidget) {
        QWidget *w = new QWidget(this);
        QLabel *label = new QLabel("XO", w);
        QVBoxLayout *layout = new QVBoxLayout(w);
        layout->addWidget(label);
        layout->addWidget(m_glWidget);

        setCentralWidget(w);
    }
}

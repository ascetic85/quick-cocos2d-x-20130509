#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

class QGLWidget;
class AppDelegate;
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    
    void setCocosAppDelegate(AppDelegate *appDelegate);
    void setGLView(QGLWidget *glWidget);
protected:
    void closeEvent(QCloseEvent *);

private slots:
    void on_actionIPhone_3G_3Gs_320x480_triggered();

    void on_actionIPhone_4_640x960_triggered();

    void inter();
private:
    Ui::MainWindow *ui;
    AppDelegate *m_appDelegate;
    QGLWidget *m_glWidget;
};

#endif // MAINWINDOW_H

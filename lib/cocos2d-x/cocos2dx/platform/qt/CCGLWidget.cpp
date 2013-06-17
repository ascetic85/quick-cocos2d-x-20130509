#include "CCGLWidget.h"
#include <QtCore/QTimer>


GLWidget::GLWidget(int width, int height, CCDirector* director, QWidget *parent)
    : QGLWidget(QGLFormat(QGL::DoubleBuffer), parent)
    , mouseMoveFunc(NULL)
    , mousePressFunc(NULL)
    , mouseReleaseFunc(NULL)
    , keyEventFunc(NULL)
    , m_director(director)
    , m_timer(NULL)
{
    setAutoFillBackground(false);
    setAttribute(Qt::WA_OpaquePaintEvent);
    setAttribute(Qt::WA_NoSystemBackground);
    setAttribute(Qt::WA_NativeWindow);
    setAttribute(Qt::WA_PaintOnScreen, true);
    setAttribute(Qt::WA_StyledBackground, false);
    setAttribute(Qt::WA_PaintUnclipped);

    setAttribute(Qt::WA_InputMethodEnabled, true);
    setAttribute(Qt::WA_KeyboardFocusChange, true);
    setInputMethodHints(Qt::ImhNoPredictiveText);

    resize(width, height);
}

GLWidget::~GLWidget()
{
    if (m_timer)
    {
        m_timer->stop();
        delete m_timer;
    }
}

void GLWidget::setMouseMoveFunc(PTRFUN func)
{
    mouseMoveFunc = func;
}

void GLWidget::setMousePressFunc(PTRFUN func)
{
    mousePressFunc = func;
}

void GLWidget::setMouseReleaseFunc(PTRFUN func)
{
    mouseReleaseFunc = func;
}

void GLWidget::setKeyEventFunc(ACCEL_PTRFUN func)
{
    keyEventFunc = func;
}

void GLWidget::mouseMoveEvent(QMouseEvent *event)
{
    if (mouseMoveFunc)
        mouseMoveFunc(event);

    QGLWidget::mouseMoveEvent(event);
}

void GLWidget::mousePressEvent(QMouseEvent *event)
{
    if (mousePressFunc)
        mousePressFunc(event);

    QGLWidget::mousePressEvent(event);
}

void GLWidget::mouseReleaseEvent(QMouseEvent *event)
{
    if (mouseReleaseFunc)
        mouseReleaseFunc(event);

    QGLWidget::mouseReleaseEvent(event);
}

void GLWidget::keyPressEvent(QKeyEvent *e)
{
    if (keyEventFunc)
        keyEventFunc(e);

    QGLWidget::keyPressEvent(e);
}

void GLWidget::keyReleaseEvent(QKeyEvent *e)
{
    if (keyEventFunc)
        keyEventFunc(e);

    QGLWidget::keyReleaseEvent(e);
}

//void GLWidget::update()
//{
////    glewInit();
//    makeCurrent();

//    if (m_director)
//        m_director->mainLoop();

//    doneCurrent();
//}



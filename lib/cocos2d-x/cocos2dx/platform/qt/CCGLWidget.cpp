#include "CCGLWidget.h"
#include <QtCore/QTimer>


GLWidget::GLWidget(int width, int height, CCDirector* director, QWidget *parent)
    : QGLWidget(QGLFormat(QGL::DoubleBuffer), parent)
    , mouseMoveFunc(NULL)
    , mousePressFunc(NULL)
    , mouseReleaseFunc(NULL)
    , m_director(director)
    , m_timer(NULL)
{
    setAnimationInterval(1.0f / 60.0f);

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

void GLWidget::update()
{
//    glewInit();
    makeCurrent();

    if (m_director)
        m_director->mainLoop();

    doneCurrent();
}

void GLWidget::setAnimationInterval(double interval)
{
    if (!m_timer) {
        m_timer = new QTimer(this);
        connect(m_timer, SIGNAL(timeout()), this, SLOT(update()));
    }
    m_timer->start(1000 * interval);
}


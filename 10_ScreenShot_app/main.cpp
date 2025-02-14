#include <QApplication>
#include <QWidget>
#include <QVBoxLayout>
#include <QLabel>
#include <QPushButton>
#include <QFileDialog>
#include <QShortcut>
#include <QTimer>
#include <QScreen>
#include <QWindow>

QString saveDirectory;

void takeScreenShotAfterMinimizing(QWidget *mainWindow){
    mainWindow->showMinimized();

    // use short delay to soure the mainWindow is Completly minimized berfore take the Screen shot
    QTimer::singleShot(500,[mainWindow](){
        QScreen *screen = QGuiApplication::primaryScreen();

        if(!screen){
            return ;
        }

        QPixmap screenShot = screen->grabWindow(0);

        // save the screen to selected directory
        QString timestamp = QDateTime::currentDateTime().toString("yyyyMMdd_hhmmss");
        QString filePath = saveDirectory + "/ScreenShot_" + timestamp + ".png" ;

        if(screenShot.save(filePath)){
            qDebug() << "Screen Shot saved to : "<<filePath;
        }
        else{
            qDebug()<<"Faild to save Screen shot";
        }

        // restore the mainWindow back to normal state after screenshot is taken
        mainWindow->showNormal();

    });
}

void startScreenShotSession(QPushButton *screenShotButton, QWidget *mainWindow){
    saveDirectory = QFileDialog::getExistingDirectory(mainWindow, "Choose Directory", "");
    if(!saveDirectory.isEmpty()){
        QShortcut *shortcut = new QShortcut(QKeySequence("T"), mainWindow);
        QObject::connect(shortcut, &QShortcut::activated, [mainWindow](){
            takeScreenShotAfterMinimizing(mainWindow);
        });

        // chnage the button to disable
        screenShotButton->setText("Press 'T' to Take Screen Shot");
        screenShotButton->setEnabled(false);

    }
}

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QWidget mainWindow;
    mainWindow.setWindowTitle("Scren Shot App");
    mainWindow.resize(300,100);

    QVBoxLayout *layout = new QVBoxLayout(&mainWindow);
    QLabel *titleLabel = new QLabel("Scren Shot App");
    titleLabel->setAlignment(Qt::AlignCenter);
    titleLabel->setStyleSheet("font-size:22px; font-weight: bold; font-family: Bell MT; color: blue");

    layout->addWidget(titleLabel);

    QPushButton *screenShotButton = new QPushButton("Take Screen Shot");
    screenShotButton->setStyleSheet("font-size: 18px; color:white; background: green");

    layout->addWidget(screenShotButton);

    QObject::connect(screenShotButton, &QPushButton::clicked, [&](){
        startScreenShotSession(screenShotButton, &mainWindow);
    });

    mainWindow.show();

    return app.exec();
}

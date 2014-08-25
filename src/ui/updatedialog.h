#ifndef UPDATEDIALOG_H
#define UPDATEDIALOG_H

#include <QDialog>

#include "updatemanager.h"

namespace Ui {
class UpdateDialog;
}

class UpdateDialog : public QDialog
{
    Q_OBJECT

public:
    explicit UpdateDialog(UpdateManager *updateManager, QWidget *parent = 0);
    ~UpdateDialog();

    static int update(UpdateManager *updateManager, QWidget *parent = 0);

protected slots:
    void Download();

private:
    Ui::UpdateDialog *ui;
    UpdateManager *updateManager;
};

#endif // UPDATEDIALOG_H

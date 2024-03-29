#ifndef POSTCONTROLLER_H
#define POSTCONTROLLER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>

class PostController : public QObject
{
    Q_OBJECT
public:
    explicit PostController(QObject *parent = nullptr);


signals:
//    void getPostsResult(const QVariantList& posts);
    void getPostsResult(QList<QMap<QString, QVariant>> posts);


public slots:
    void getPosts();
//    void handleNetworkData(QNetworkReply* reply);

private:
    QNetworkAccessManager m_networkAccessManager;
};

#endif // POSTCONTROLLER_H

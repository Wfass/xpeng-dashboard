.class public Lcom/xiaopeng/lib/apirouter/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/lib/apirouter/log/DefaultLog;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/log/DefaultLog;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/apirouter/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/apirouter/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/apirouter/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLog(Lcom/xiaopeng/lib/apirouter/log/ILog;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/apirouter/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/apirouter/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->mLog:Lcom/xiaopeng/lib/apirouter/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

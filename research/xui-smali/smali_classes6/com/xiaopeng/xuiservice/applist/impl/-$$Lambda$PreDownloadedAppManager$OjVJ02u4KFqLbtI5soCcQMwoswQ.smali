.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;->f$1:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$OjVJ02u4KFqLbtI5soCcQMwoswQ;->f$1:Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->lambda$uninstallApp$3(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    return-void
.end method

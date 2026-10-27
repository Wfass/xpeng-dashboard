.class public interface abstract Lcom/xiaopeng/xuimanager/applist/ApplistFunc;
.super Ljava/lang/Object;
.source "ApplistFunc.java"


# virtual methods
.method public abstract getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
.end method

.method public abstract getAppInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfoList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfoList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfos(Ljava/lang/String;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
.end method

.method public abstract installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method public abstract notifyAppEvent(II[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)I
.end method

.method public abstract registerAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
.end method

.method public abstract resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method public abstract startApp(Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract unRegisterAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
.end method

.method public abstract uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method public abstract updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method public abstract updateApplist(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation
.end method

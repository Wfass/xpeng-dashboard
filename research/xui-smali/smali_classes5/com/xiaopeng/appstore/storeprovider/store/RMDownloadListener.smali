.class public interface abstract Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
.super Ljava/lang/Object;
.source "RMDownloadListener.java"


# virtual methods
.method public abstract onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resourceDownloadInfo"
        }
    .end annotation
.end method

.method public abstract onMenuOpenCallback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation
.end method

.method public abstract unbindService()V
.end method

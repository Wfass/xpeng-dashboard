.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/ISync;
.super Ljava/lang/Object;
.source "ISync.java"


# virtual methods
.method public abstract init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appID",
            "appSecret",
            "vehicleSeries",
            "vin",
            "hardwareID"
        }
    .end annotation
.end method

.method public abstract onNetworkAvailable()V
.end method

.method public abstract onUserChanged(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract restore()V
.end method

.method public abstract save(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncData;",
            ">;)V"
        }
    .end annotation
.end method

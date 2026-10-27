.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/ISync;
.super Ljava/lang/Object;
.source "ISync.java"


# virtual methods
.method public abstract init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNetworkAvailable()V
.end method

.method public abstract onUserChanged(Ljava/lang/Long;)V
.end method

.method public abstract restore()V
.end method

.method public abstract save(Ljava/util/List;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncData;",
            ">;)V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/xiaopeng/aar/server/ipc/IpcServer;
.super Ljava/lang/Object;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;
    }
.end annotation


# virtual methods
.method public keepAlive(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public abstract onCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract send(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setOnClientListener(Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;)V
.end method

.method public abstract setTargetPackage(Ljava/lang/String;)V
.end method

.method public abstract setTargetPackages(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;
.super Ljava/lang/Object;
.source "ClientListener.java"


# virtual methods
.method public onAsyncCallResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "appId",
            "module",
            "method",
            "result"
        }
    .end annotation

    return-void
.end method

.method public abstract onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "module",
            "method",
            "data"
        }
    .end annotation
.end method

.method public onServerStatus(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appId",
            "status"
        }
    .end annotation

    return-void
.end method

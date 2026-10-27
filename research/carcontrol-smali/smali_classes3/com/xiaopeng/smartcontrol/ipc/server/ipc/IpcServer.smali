.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer;
.super Ljava/lang/Object;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;
    }
.end annotation


# virtual methods
.method public abstract hasInitCompleted()Z
.end method

.method public abstract onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "module",
            "method",
            "param"
        }
    .end annotation
.end method

.method public abstract send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "data"
        }
    .end annotation
.end method

.method public abstract setIpcCallback(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

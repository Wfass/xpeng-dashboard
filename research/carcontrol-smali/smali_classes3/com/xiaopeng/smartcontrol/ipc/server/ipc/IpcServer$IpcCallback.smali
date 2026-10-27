.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;
.super Ljava/lang/Object;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IpcCallback"
.end annotation


# virtual methods
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

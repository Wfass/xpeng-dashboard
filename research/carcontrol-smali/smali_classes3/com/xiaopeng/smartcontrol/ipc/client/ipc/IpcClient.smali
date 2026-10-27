.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient;
.super Ljava/lang/Object;
.source "IpcClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;
    }
.end annotation


# virtual methods
.method public abstract call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
            "param"
        }
    .end annotation
.end method

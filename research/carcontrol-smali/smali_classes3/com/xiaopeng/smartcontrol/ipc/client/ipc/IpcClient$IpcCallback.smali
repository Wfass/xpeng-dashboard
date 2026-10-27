.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient$IpcCallback;
.super Ljava/lang/Object;
.source "IpcClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ipc/IpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IpcCallback"
.end annotation


# static fields
.field public static final STATUS_DIED:I = 0x2

.field public static final STATUS_START:I = 0x1


# virtual methods
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

.method public abstract onServerStatus(Ljava/lang/String;I)V
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
.end method

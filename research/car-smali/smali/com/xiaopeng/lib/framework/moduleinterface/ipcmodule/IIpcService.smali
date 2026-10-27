.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;
.super Ljava/lang/Object;
.source "IIpcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;
    }
.end annotation


# virtual methods
.method public abstract init()V
.end method

.method public varargs abstract sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msgId",
            "payloadData",
            "appIds"
        }
    .end annotation
.end method

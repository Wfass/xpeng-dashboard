.class public Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;
.super Ljava/lang/Object;
.source "IIpcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpcMessageEvent"
.end annotation


# instance fields
.field mMsgID:I

.field mPayloadData:Landroid/os/Bundle;

.field mSenderPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgID()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mMsgID:I

    return v0
.end method

.method public getPayloadData()Landroid/os/Bundle;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mPayloadData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSenderPackageName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mSenderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgID(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mMsgID:I

    .line 61
    return-void
.end method

.method public setPayloadData(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mPayloadData:Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method public setSenderPackageName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mSenderPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcMessageEvent{mSenderPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mSenderPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mMsgID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPayloadData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->mPayloadData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lcom/xiaopeng/ipc/IPC;
.super Ljava/lang/Object;
.source "IPC.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ipc/IPC$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerClient(Ljava/lang/String;Lcom/xiaopeng/ipc/IPCCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendData(Ljava/lang/String;Lcom/xiaopeng/ipc/IpcMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterClient(Ljava/lang/String;Lcom/xiaopeng/ipc/IPCCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

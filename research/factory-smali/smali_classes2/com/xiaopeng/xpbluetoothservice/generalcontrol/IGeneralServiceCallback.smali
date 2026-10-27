.class public interface abstract Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
.super Ljava/lang/Object;
.source "IGeneralServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessageCallback(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSppDataCallback(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

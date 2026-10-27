.class public interface abstract Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;
.super Ljava/lang/Object;
.source "IXPBluetoothService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBtA2DPControlService()Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBtGeneralControlService()Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBtPhoneControlService()Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

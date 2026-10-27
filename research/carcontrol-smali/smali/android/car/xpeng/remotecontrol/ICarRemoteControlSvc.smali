.class public interface abstract Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;
.super Ljava/lang/Object;
.source "ICarRemoteControlSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;,
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract registerRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRemoteCameraControlCmd(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRemoteControlMirrowFeedBack(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRemoteControlMirrowOnOff(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

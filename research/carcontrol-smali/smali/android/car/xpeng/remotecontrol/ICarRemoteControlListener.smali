.class public interface abstract Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;
.super Ljava/lang/Object;
.source "ICarRemoteControlListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;,
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRemoteCameraEventChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteControlMirrorSwitch(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

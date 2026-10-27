.class public interface abstract Landroid/car/xpeng/mode/ICarLeaveModeSvc;
.super Ljava/lang/Object;
.source "ICarLeaveModeSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;,
        Landroid/car/xpeng/mode/ICarLeaveModeSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarLeaveModeEnable()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCarLeaveModeTip()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarLeaveModeEnable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/car/xpeng/guard/ICarGuardModeSvc;
.super Ljava/lang/Object;
.source "ICarGuardModeSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;,
        Landroid/car/xpeng/guard/ICarGuardModeSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarGuardModeLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCarGuardModeSensitivity()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarGuardModeLevel(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarGuardModeSensitivity(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarGuardThresholdJson(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

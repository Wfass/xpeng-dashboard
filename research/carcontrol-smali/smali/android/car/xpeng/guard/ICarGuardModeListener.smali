.class public interface abstract Landroid/car/xpeng/guard/ICarGuardModeListener;
.super Ljava/lang/Object;
.source "ICarGuardModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;,
        Landroid/car/xpeng/guard/ICarGuardModeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCarGuardModeActiveChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCarGuardModeLevelChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCarGuardModeSceneOrientationChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCarGuardModeWork(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOtherStatistics(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

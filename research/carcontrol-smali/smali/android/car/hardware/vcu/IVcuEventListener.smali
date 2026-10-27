.class public interface abstract Landroid/car/hardware/vcu/IVcuEventListener;
.super Ljava/lang/Object;
.source "IVcuEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/vcu/IVcuEventListener$Stub;,
        Landroid/car/hardware/vcu/IVcuEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVcuChargeStatusEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVcuCruiseControlStatusEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVcuGearEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVcuRawCarSpeedEvent(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

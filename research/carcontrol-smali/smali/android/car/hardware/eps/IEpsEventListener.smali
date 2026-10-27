.class public interface abstract Landroid/car/hardware/eps/IEpsEventListener;
.super Ljava/lang/Object;
.source "IEpsEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/eps/IEpsEventListener$Stub;,
        Landroid/car/hardware/eps/IEpsEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onEpsSteeringAngleEvent(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEpsSteeringAngleSpeedEvent(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

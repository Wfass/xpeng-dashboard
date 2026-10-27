.class public interface abstract Landroid/car/xpeng/energy/ICarEnergyConspSvc;
.super Ljava/lang/Object;
.source "ICarEnergyConspSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;,
        Landroid/car/xpeng/energy/ICarEnergyConspSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarElectriEnergyDistribution()[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

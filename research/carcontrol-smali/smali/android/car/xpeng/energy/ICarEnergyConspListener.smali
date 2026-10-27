.class public interface abstract Landroid/car/xpeng/energy/ICarEnergyConspListener;
.super Ljava/lang/Object;
.source "ICarEnergyConspListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;,
        Landroid/car/xpeng/energy/ICarEnergyConspListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCarEnergyConspChange(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

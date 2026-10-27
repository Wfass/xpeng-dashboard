.class public interface abstract Landroid/car/hardware/condition/ICarConditionEventListener;
.super Ljava/lang/Object;
.source "ICarConditionEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/condition/ICarConditionEventListener$Stub;,
        Landroid/car/hardware/condition/ICarConditionEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

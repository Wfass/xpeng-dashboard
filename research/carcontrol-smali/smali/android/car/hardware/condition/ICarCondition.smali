.class public interface abstract Landroid/car/hardware/condition/ICarCondition;
.super Ljava/lang/Object;
.source "ICarCondition.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/condition/ICarCondition$Stub;,
        Landroid/car/hardware/condition/ICarCondition$Default;
    }
.end annotation


# virtual methods
.method public abstract registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

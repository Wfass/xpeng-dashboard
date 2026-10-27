.class public interface abstract Landroid/car/hardware/tbox/ICarTime;
.super Ljava/lang/Object;
.source "ICarTime.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/tbox/ICarTime$Stub;,
        Landroid/car/hardware/tbox/ICarTime$Default;
    }
.end annotation


# virtual methods
.method public abstract setCarTimezone(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

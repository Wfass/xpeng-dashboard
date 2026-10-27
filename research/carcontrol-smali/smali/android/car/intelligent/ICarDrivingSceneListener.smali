.class public interface abstract Landroid/car/intelligent/ICarDrivingSceneListener;
.super Ljava/lang/Object;
.source "ICarDrivingSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/ICarDrivingSceneListener$Stub;,
        Landroid/car/intelligent/ICarDrivingSceneListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

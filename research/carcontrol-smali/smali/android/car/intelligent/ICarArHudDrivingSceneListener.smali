.class public interface abstract Landroid/car/intelligent/ICarArHudDrivingSceneListener;
.super Ljava/lang/Object;
.source "ICarArHudDrivingSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/ICarArHudDrivingSceneListener$Stub;,
        Landroid/car/intelligent/ICarArHudDrivingSceneListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCarArHudDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/car/intelligent/ICarIntelligentEngine;
.super Ljava/lang/Object;
.source "ICarIntelligentEngine.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/ICarIntelligentEngine$Stub;,
        Landroid/car/intelligent/ICarIntelligentEngine$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarArHudDrivingSceneNRALevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCarDrivingSceneNRALevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarArHudDrivingSceneNRALevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarDrivingSceneNRALevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

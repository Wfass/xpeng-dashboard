.class public interface abstract Landroid/car/intelligent/ICarSceneListener;
.super Ljava/lang/Object;
.source "ICarSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/ICarSceneListener$Stub;,
        Landroid/car/intelligent/ICarSceneListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

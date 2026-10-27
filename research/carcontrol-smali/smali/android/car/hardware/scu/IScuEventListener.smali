.class public interface abstract Landroid/car/hardware/scu/IScuEventListener;
.super Ljava/lang/Object;
.source "IScuEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/scu/IScuEventListener$Stub;,
        Landroid/car/hardware/scu/IScuEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAccEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

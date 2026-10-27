.class public interface abstract Landroid/car/xpeng/mode/ICarLeaveModeListener;
.super Ljava/lang/Object;
.source "ICarLeaveModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/ICarLeaveModeListener$Stub;,
        Landroid/car/xpeng/mode/ICarLeaveModeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onLeaveModeEventChange(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

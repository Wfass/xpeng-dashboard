.class public interface abstract Landroid/car/xpeng/mode/ICarCareModeListener;
.super Ljava/lang/Object;
.source "ICarCareModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/ICarCareModeListener$Stub;,
        Landroid/car/xpeng/mode/ICarCareModeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCareModeEventChange(Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

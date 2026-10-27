.class public interface abstract Landroid/car/xpeng/mode/ICarCareModeSvc;
.super Ljava/lang/Object;
.source "ICarCareModeSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;,
        Landroid/car/xpeng/mode/ICarCareModeSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarCareModeEnable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCareModeTick(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarCareModeEnable(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

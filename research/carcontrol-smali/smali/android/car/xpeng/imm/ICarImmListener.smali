.class public interface abstract Landroid/car/xpeng/imm/ICarImmListener;
.super Ljava/lang/Object;
.source "ICarImmListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/imm/ICarImmListener$Stub;,
        Landroid/car/xpeng/imm/ICarImmListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onImmAvmStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImmStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImmVoiceAwakenStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;
.super Ljava/lang/Object;
.source "IA2DPServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessageCallback(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

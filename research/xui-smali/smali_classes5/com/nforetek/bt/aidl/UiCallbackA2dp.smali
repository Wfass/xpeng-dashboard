.class public interface abstract Lcom/nforetek/bt/aidl/UiCallbackA2dp;
.super Ljava/lang/Object;
.source "UiCallbackA2dp.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackA2dp$Stub;
    }
.end annotation


# virtual methods
.method public abstract onA2dpServiceReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onA2dpStateChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/nforetek/bt/aidl/UiCallbackHid;
.super Ljava/lang/Object;
.source "UiCallbackHid.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackHid$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHidServiceReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHidStateChanged(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

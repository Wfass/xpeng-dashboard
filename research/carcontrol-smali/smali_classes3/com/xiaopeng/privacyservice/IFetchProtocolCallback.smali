.class public interface abstract Lcom/xiaopeng/privacyservice/IFetchProtocolCallback;
.super Ljava/lang/Object;
.source "IFetchProtocolCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IFetchProtocolCallback$Stub;,
        Lcom/xiaopeng/privacyservice/IFetchProtocolCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract callback(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

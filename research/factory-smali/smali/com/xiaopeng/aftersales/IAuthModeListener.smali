.class public interface abstract Lcom/xiaopeng/aftersales/IAuthModeListener;
.super Ljava/lang/Object;
.source "IAuthModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IAuthModeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthModeChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

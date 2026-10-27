.class public interface abstract Lcom/xiaopeng/aftersales/IShellCmdListener;
.super Ljava/lang/Object;
.source "IShellCmdListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IShellCmdListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShellResponse(ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

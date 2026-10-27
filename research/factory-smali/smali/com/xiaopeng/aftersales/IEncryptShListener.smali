.class public interface abstract Lcom/xiaopeng/aftersales/IEncryptShListener;
.super Ljava/lang/Object;
.source "IEncryptShListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IEncryptShListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEncryptShResponse(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

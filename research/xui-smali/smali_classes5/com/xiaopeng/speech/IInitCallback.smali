.class public interface abstract Lcom/xiaopeng/speech/IInitCallback;
.super Ljava/lang/Object;
.source "IInitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/IInitCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

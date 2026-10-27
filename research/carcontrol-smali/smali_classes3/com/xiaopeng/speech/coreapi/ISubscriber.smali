.class public interface abstract Lcom/xiaopeng/speech/coreapi/ISubscriber;
.super Ljava/lang/Object;
.source "ISubscriber.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;
    }
.end annotation


# virtual methods
.method public abstract isSubscribed(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

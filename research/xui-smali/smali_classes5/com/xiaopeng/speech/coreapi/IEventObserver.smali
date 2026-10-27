.class public interface abstract Lcom/xiaopeng/speech/coreapi/IEventObserver;
.super Ljava/lang/Object;
.source "IEventObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

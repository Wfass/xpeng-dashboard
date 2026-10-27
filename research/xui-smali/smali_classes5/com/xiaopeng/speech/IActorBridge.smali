.class public interface abstract Lcom/xiaopeng/speech/IActorBridge;
.super Ljava/lang/Object;
.source "IActorBridge.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/IActorBridge$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(Lcom/xiaopeng/speech/actor/Actor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

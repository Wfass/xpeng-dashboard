.class public interface abstract Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;
.super Ljava/lang/Object;
.source "ILocationServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract locationChanged(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

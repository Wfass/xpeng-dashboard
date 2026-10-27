.class public interface abstract Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;
.super Ljava/lang/Object;
.source "IAutoWakeSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Stub;,
        Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAutoWakeSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

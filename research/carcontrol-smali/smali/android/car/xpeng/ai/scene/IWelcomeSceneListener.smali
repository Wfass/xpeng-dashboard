.class public interface abstract Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;
.super Ljava/lang/Object;
.source "IWelcomeSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/scene/IWelcomeSceneListener$Stub;,
        Landroid/car/xpeng/ai/scene/IWelcomeSceneListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWelcomeSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

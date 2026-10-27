.class public interface abstract Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc;
.super Ljava/lang/Object;
.source "ICarWelcomeSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc$Stub;,
        Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc$Default;
    }
.end annotation


# virtual methods
.method public abstract registerCarSceneListener(Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCarSceneListener(Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;
.super Ljava/lang/Object;
.source "IMakeupLightEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"


# virtual methods
.method public abstract onAvailableEvent(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onColorTemperatureEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEffectEvent(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLuminanceEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

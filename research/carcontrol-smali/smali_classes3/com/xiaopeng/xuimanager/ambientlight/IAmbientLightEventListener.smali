.class public interface abstract Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;
.super Ljava/lang/Object;
.source "IAmbientLightEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.ambientlight.IAmbientLightEventListener"


# virtual methods
.method public abstract onAmbientLightSetEvent(ILjava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

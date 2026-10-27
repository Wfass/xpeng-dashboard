.class public interface abstract Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
.super Ljava/lang/Object;
.source "ITwilightStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;,
        Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.condition.ITwilightStateListener"


# virtual methods
.method public abstract onTwilightStateChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

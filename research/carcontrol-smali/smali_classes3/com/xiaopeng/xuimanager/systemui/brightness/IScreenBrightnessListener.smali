.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;
.super Ljava/lang/Object;
.source "IScreenBrightnessListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.brightness.IScreenBrightnessListener"


# virtual methods
.method public abstract onScreenAngleChange(IIZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScreenStateChange(IIZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

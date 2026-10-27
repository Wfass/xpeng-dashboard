.class public interface abstract Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;
.super Ljava/lang/Object;
.source "IDeviceManagerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener$Stub;,
        Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.device.IDeviceManagerListener"


# virtual methods
.method public abstract onDeviceAngleChange(IIZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceStateChange(IIZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

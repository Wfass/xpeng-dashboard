.class public interface abstract Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;
.super Ljava/lang/Object;
.source "IXuiAlsaPlayerEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayerEventListener"


# virtual methods
.method public abstract onAlsaPlayerChangeEvent(ILjava/lang/String;)V
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

.class public interface abstract Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;
.super Ljava/lang/Object;
.source "IXuiAlsaPlayer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;,
        Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"


# virtual methods
.method public abstract registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCaptureParameter(Ljava/lang/String;IIIIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPlaybackParameter(Ljava/lang/String;IIIIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPlay(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopPlay(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeData(Ljava/lang/String;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

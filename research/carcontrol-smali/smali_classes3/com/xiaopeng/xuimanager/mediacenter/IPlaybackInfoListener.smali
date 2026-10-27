.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
.super Ljava/lang/Object;
.source "IPlaybackInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"


# virtual methods
.method public abstract OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnPlaybackChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnUpdatePosition(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

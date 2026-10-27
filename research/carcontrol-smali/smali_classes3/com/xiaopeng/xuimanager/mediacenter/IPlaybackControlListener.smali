.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;
.super Ljava/lang/Object;
.source "IPlaybackControlListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IPlaybackControlListener"


# virtual methods
.method public abstract OnPlaybackControl(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnSetFavorite(ZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnSwitchSource(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

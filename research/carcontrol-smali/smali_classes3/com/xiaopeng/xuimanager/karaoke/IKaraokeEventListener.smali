.class public interface abstract Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
.super Ljava/lang/Object;
.source "IKaraokeEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"


# virtual methods
.method public abstract MicDevChangeCallBack(I)V
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

.method public abstract volumeEffectCallBack(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

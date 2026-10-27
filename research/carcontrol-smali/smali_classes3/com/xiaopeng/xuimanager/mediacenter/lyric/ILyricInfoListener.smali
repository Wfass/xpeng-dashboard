.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;
.super Ljava/lang/Object;
.source "ILyricInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.lyric.ILyricInfoListener"


# virtual methods
.method public abstract onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;
.super Ljava/lang/Object;
.source "LyricLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadCallback"
.end annotation


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadSuccess(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
.end method

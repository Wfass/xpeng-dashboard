.class public Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MusicLyricBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;->data:Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;->data:Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;

    return-void
.end method

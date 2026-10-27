.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;
.super Ljava/lang/Object;
.source "KugouPlayListUploadBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;
    }
.end annotation


# instance fields
.field private currentSong:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->songList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrentSong()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->currentSong:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;

    return-object v0
.end method

.method public getSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->songList:Ljava/util/List;

    return-object v0
.end method

.method public setCurrentSong(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->currentSong:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;

    return-void
.end method

.method public setSongList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;->songList:Ljava/util/List;

    return-void
.end method

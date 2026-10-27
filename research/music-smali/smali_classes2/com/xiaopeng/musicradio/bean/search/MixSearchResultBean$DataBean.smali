.class public Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;
.super Ljava/lang/Object;
.source "MixSearchResultBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collectList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageInfo"
    .end annotation
.end field

.field private mRadioList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingAlbumList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "readingAlbumList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSongList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getCollectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mCollectList:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getRadioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mRadioList:Ljava/util/List;

    return-object v0
.end method

.method public getReadingAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mReadingAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mSongList:Ljava/util/List;

    return-object v0
.end method

.method public setAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mAlbumList:Ljava/util/List;

    return-void
.end method

.method public setArtistList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->artistList:Ljava/util/List;

    return-void
.end method

.method public setCollectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mCollectList:Ljava/util/List;

    return-void
.end method

.method public setRadioList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mRadioList:Ljava/util/List;

    return-void
.end method

.method public setReadingAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mReadingAlbumList:Ljava/util/List;

    return-void
.end method

.method public setSongList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->mSongList:Ljava/util/List;

    return-void
.end method

.class public Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
.super Ljava/lang/Object;
.source "DuiSearchResultBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchMusicListResult"
.end annotation


# instance fields
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

    .line 152
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

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->mAlbumList:Ljava/util/List;

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

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->mCollectList:Ljava/util/List;

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

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->mRadioList:Ljava/util/List;

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

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->mSongList:Ljava/util/List;

    return-object v0
.end method

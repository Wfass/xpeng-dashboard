.class public Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;
.super Ljava/lang/Object;
.source "DuiSearchResultBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    }
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

.field private mKeyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyWord"
    .end annotation
.end field

.field private mKugouListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complexSearchRespV4"
    .end annotation
.end field

.field private mListed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listed"
    .end annotation
.end field

.field private mNeteaseListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complexSearchRespV3"
    .end annotation
.end field

.field private mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private mParams:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params"
    .end annotation
.end field

.field private mQQListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complexSearchRespV2"
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

.field private mSearchType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchType"
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

.field private mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private noPlay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noplay"
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mListed:I

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

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mAlbumList:Ljava/util/List;

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

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mCollectList:Ljava/util/List;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKugouListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mKugouListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    return-object v0
.end method

.method public getListed()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mListed:I

    return v0
.end method

.method public getNeteasListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mNeteaseListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mPage:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mParams:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    return-object v0
.end method

.method public getQQListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mQQListResult:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->query:Ljava/lang/String;

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

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mRadioList:Ljava/util/List;

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

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mReadingAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mSearchType:I

    return v0
.end method

.method public getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

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

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mSongList:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isNoPlay()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->noPlay:Z

    return v0
.end method

.method public setListed(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->mListed:I

    return-void
.end method

.method public setNoPlay(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->noPlay:Z

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->query:Ljava/lang/String;

    return-void
.end method

.method public setSemantic(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    return-void
.end method

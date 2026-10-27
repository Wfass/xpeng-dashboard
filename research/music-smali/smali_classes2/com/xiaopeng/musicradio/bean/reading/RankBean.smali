.class public Lcom/xiaopeng/musicradio/bean/reading/RankBean;
.super Ljava/lang/Object;
.source "RankBean.java"


# instance fields
.field private mAlbumInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumInfosString:Ljava/lang/String;

.field private mContentType:I

.field private mCoverPath:Ljava/lang/String;

.field private mRankId:I

.field private mRankName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmAlbumInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mAlbumInfos:Ljava/util/List;

    return-object v0
.end method

.method public getmAlbumInfosString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mAlbumInfosString:Ljava/lang/String;

    return-object v0
.end method

.method public getmContentType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mContentType:I

    return v0
.end method

.method public getmCoverPath()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmRankId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mRankId:I

    return v0
.end method

.method public getmRankName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mRankName:Ljava/lang/String;

    return-object v0
.end method

.method public setmAlbumInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mAlbumInfos:Ljava/util/List;

    return-void
.end method

.method public setmAlbumInfosString(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mAlbumInfosString:Ljava/lang/String;

    return-void
.end method

.method public setmContentType(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mContentType:I

    return-void
.end method

.method public setmCoverPath(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setmRankId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mRankId:I

    return-void
.end method

.method public setmRankName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/RankBean;->mRankName:Ljava/lang/String;

    return-void
.end method

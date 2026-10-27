.class public Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;
.super Ljava/lang/Object;
.source "HotRankListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankBean"
.end annotation


# instance fields
.field private mAlbumInfos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumInfoDtos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentType"
    .end annotation
.end field

.field private mCoverPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverPath"
    .end annotation
.end field

.field private mRankId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rankId"
    .end annotation
.end field

.field private mRankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rankName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;

    .line 78
    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankId:I

    iget p1, p1, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlbumInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mAlbumInfos:Ljava/util/List;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mContentType:I

    return v0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRankId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankId:I

    return v0
.end method

.method public getRankName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAlbumInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mAlbumInfos:Ljava/util/List;

    return-void
.end method

.method public setRankId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankId:I

    return-void
.end method

.method public setRankName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->mRankName:Ljava/lang/String;

    return-void
.end method

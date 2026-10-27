.class public Lcom/xiaopeng/musicradio/bean/music/ConResult;
.super Ljava/lang/Object;
.source "ConResult.java"


# instance fields
.field private mRadioResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

.field private mRankResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

.field public mResultJson:Ljava/lang/String;

.field private mRmResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

.field private mSingerResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

.field private mXpResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

.field private mZoneListResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mResultJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRadioResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    return-object v0
.end method

.method public getRankResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRankResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    return-object v0
.end method

.method public getResultJson()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mResultJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRmResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRmResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    return-object v0
.end method

.method public getSingerResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mSingerResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    return-object v0
.end method

.method public getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mXpResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    return-object v0
.end method

.method public getZoneListResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mZoneListResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;

    return-object v0
.end method

.method public setRadioResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRadioResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    return-void
.end method

.method public setRankResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRankResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    return-void
.end method

.method public setResultJson(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mResultJson:Ljava/lang/String;

    return-void
.end method

.method public setRmResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mRmResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    return-void
.end method

.method public setSingerResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mSingerResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    return-void
.end method

.method public setXpResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mXpResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    return-void
.end method

.method public setZoneListResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/ConResult;->mZoneListResult:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;

    return-void
.end method

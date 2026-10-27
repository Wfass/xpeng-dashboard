.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;
.super Ljava/lang/Object;
.source "CollectMusicTxBean.java"


# instance fields
.field private collectId:Ljava/lang/String;

.field private collectInfo:Ljava/lang/String;

.field private collectType:I

.field private ts:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectType:I

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectId:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->ts:J

    return-void
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectInfo()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectType()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectType:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->ts:J

    return-wide v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setCollectInfo(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectInfo:Ljava/lang/String;

    return-void
.end method

.method public setCollectType(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->collectType:I

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectMusicTxBean;->ts:J

    return-void
.end method

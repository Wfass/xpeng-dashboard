.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;
.super Ljava/lang/Object;
.source "MusicCollectBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLLECT_ALBUM_USER:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/String;

.field private isUserCollect:I

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private opRecommend:I

.field private reason:Ljava/lang/String;

.field private reportJson:Ljava/lang/String;

.field private songCount:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUserCollect()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->isUserCollect:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpRecommend()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->opRecommend:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReportJson()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->reportJson:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsUserCollect(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->isUserCollect:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpRecommend(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->opRecommend:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->reason:Ljava/lang/String;

    return-void
.end method

.method public setReportJson(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->reportJson:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->type:I

    return-void
.end method

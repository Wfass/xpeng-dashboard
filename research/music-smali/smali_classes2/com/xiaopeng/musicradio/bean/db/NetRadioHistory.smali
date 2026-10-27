.class public Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;
.super Ljava/lang/Object;
.source "NetRadioHistory.java"


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cacheTime:J

.field private hz:D

.field private id:J

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private playCount:I

.field private playUrl:Ljava/lang/String;

.field private playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

.field private programInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JDLjava/lang/String;ILjava/lang/String;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JD",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;J)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->id:J

    .line 48
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->name:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->picUrl:Ljava/lang/String;

    .line 50
    iput-wide p5, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->updateTime:J

    .line 51
    iput-wide p7, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->hz:D

    .line 52
    iput-object p9, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->areaCode:Ljava/lang/String;

    .line 53
    iput p10, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playCount:I

    .line 54
    iput-object p11, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playUrl:Ljava/lang/String;

    .line 55
    iput-object p12, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 56
    iput-object p13, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->programInfos:Ljava/util/List;

    .line 57
    iput-wide p14, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->cacheTime:J

    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->cacheTime:J

    return-wide v0
.end method

.method public getHz()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->hz:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playCount:I

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0
.end method

.method public getProgramInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->programInfos:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->updateTime:J

    return-wide v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->cacheTime:J

    return-void
.end method

.method public setHz(D)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->hz:D

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->name:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playCount:I

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-void
.end method

.method public setProgramInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->programInfos:Ljava/util/List;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->updateTime:J

    return-void
.end method
